]
;; Constants
(define-data-var next-artwork-id uint u1)

(define-map artworks
  ((artwork-id uint))
  {
    title: (buff 64),
    artist: principal,
    description: (buff 256),
    image-url: (string-ascii 256),
    price: uint,
    created-at: uint,
    is-for-sale: bool
  }
)

(define-map artist-gallery
  ((artist principal))
  (list 100 uint)
)

(define-public (submit-artwork (title (buff 64)) (description (buff 256)) (image-url (string-ascii 256)) (price uint))
  (let
    ((id (var-get next-artwork-id))
     (caller tx-sender)
     (block-height (as-max-int? (block-height))))
    (begin
      (map-set artworks
        ((artwork-id id))
        {
          title: title,
          artist: caller,
          description: description,
          image-url: image-url,
          price: price,
          created-at: block-height,
          is-for-sale: (is-eq price u0)
        }
      )
      (let ((existing-gallery (default-to (list) (map-get? artist-gallery ((artist caller))))))
        (map-set artist-gallery ((artist caller)) (append existing-gallery (list id))))
      (var-set next-artwork-id (+ id u1))
      (ok id)
    )
  )
)

(define-public (browse-gallery (artwork-id uint))
  (match (map-get artworks ((artwork-id artwork-id)))
    artwork (ok artwork)
    (err u404)
  )
)

(define-read-only (get-artist-gallery (artist principal))
  (default-to (list) (map-get? artist-gallery ((artist artist))))
)

(define-read-only (get-my-gallery)
  (default-to (list) (map-get? artist-gallery ((artist tx-sender))))
)

(define-read-only (get-total-artworks)
  (var-get next-artwork-id)
)

(define-read-only (get-next-artwork-id)
  (var-get next-artwork-id)
)

(define-read-only (artwork-exists (artwork-id uint))
  (is-some (map-get? artworks ((artwork-id artwork-id))))
)

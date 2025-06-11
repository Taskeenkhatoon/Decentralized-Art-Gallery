# Decentralized-Art-Gallery
## Project Description

The Decentralized Art Gallery is a revolutionary blockchain-based platform built on the Stacks network using Clarity smart contracts. This project enables artists to showcase their digital artwork in a completely decentralized manner, ensuring permanent preservation, authentic ownership, and censorship-resistant exhibition of creative works.

Artists can submit their artwork with metadata including title, description, image URLs, and pricing information. The gallery provides a transparent, immutable record of artistic creations while giving artists complete control over their work. Each piece of art is permanently stored on the blockchain with tamper-proof authenticity and provenance tracking.

The platform eliminates intermediaries between artists and art enthusiasts, creating a direct connection that empowers creators and provides collectors with verifiable authenticity and ownership history.

## Project Vision

Our vision is to democratize the art world by creating a decentralized ecosystem where artistic expression knows no boundaries. We aim to:

- **Artist Empowerment**: Provide artists with complete control over their work, pricing, and distribution
- **Permanent Preservation**: Ensure artworks are preserved forever on the blockchain, protected from censorship or loss
- **Global Accessibility**: Make art accessible to anyone, anywhere, breaking down geographical and economic barriers
- **Authentic Provenance**: Create immutable records of artwork creation and ownership history
- **Direct Creator Economy**: Enable artists to monetize their work directly without intermediaries
- **Cultural Heritage**: Build a permanent, decentralized archive of human creative expression
- **Innovation in Art**: Foster new forms of digital art and creative expression through blockchain technology

## Future Scope

### Phase 1 - Enhanced Gallery Features
- Artwork categorization and tagging system
- Advanced search and filtering capabilities
- Artist profiles and portfolio management
- Artwork rating and review system

### Phase 2 - Marketplace Integration
- Direct artwork purchase functionality
- Auction system for high-value pieces
- Secondary market for artwork trading
- Royalty distribution system for artists

### Phase 3 - Social Features
- Artist collaboration tools
- Community galleries and exhibitions
- Art challenges and competitions
- Follower system and social interactions

### Phase 4 - Advanced Technology
- NFT integration and minting capabilities
- IPFS integration for decentralized storage
- Cross-chain artwork trading
- Virtual reality gallery experiences

### Phase 5 - Ecosystem Expansion
- Physical gallery partnerships
- Art authentication services
- Museum and institution integrations
- Educational platform for art history and blockchain
- DeFi integration for art-backed lending

### Phase 6 - Global Impact
- Art charity and fundraising platforms
- Cultural preservation initiatives
- Artist grant and funding programs
- Integration with traditional art market infrastructures

## Contract Address

**Testnet Contract Address**: `ST2EV4JDJQKWQV13H0VVHG66ABCTR1P8YR596CHR6.decentralized-art-gallery`

### Contract Functions

#### Public Functions:
- `submit-artwork(title, description, image-url, price)` - Submit new artwork to the gallery
- `browse-gallery(artwork-id)` - View artwork details by ID

#### Read-Only Functions:
- `get-artist-gallery(artist)` - Get all artworks by a specific artist
- `get-my-gallery()` - Get your own submitted artworks  
- `get-total-artworks()` - Get total number of artworks in the gallery
- `get-next-artwork-id()` - Get the next available artwork ID
- `artwork-exists(artwork-id)` - Check if an artwork exists

### Deployment Instructions

1. **Prerequisites**: 
   ```bash
   npm install -g @hirosystems/clarinet-cli
   ```

2. **Setup Project**:
   ```bash
   git clone <repository-url>
   cd decentralized-art-gallery
   clarinet check
   ```

3. **Deploy to Testnet**:
   ```bash
   clarinet deployments apply --devnet
   ```

4. **Test Functions**:
   ```bash
   clarinet console
   ```

### Usage Examples

```clarity
;; Submit artwork to gallery
(contract-call? .decentralized-art-gallery submit-artwork 
  "Digital Sunset" 
  "A vibrant digital painting capturing the essence of a sunset over mountains" 
  "https://example.com/artwork/sunset.jpg" 
  u1000000)

;; Browse artwork by ID
(contract-call? .decentralized-art-gallery browse-gallery u1)

;; Get all artworks by an artist
(contract-call? .decentralized-art-gallery get-artist-gallery 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM)
```

### Data Structure

Each artwork contains:
- **Title**: Artwork name (max 64 characters)
- **Artist**: Principal address of the creator
- **Description**: Detailed artwork description (max 256 characters)
- **Image URL**: Link to the artwork image
- **Price**: Price in microSTX (0 = not for sale)
- **Created At**: Block height when submitted
- **Is For Sale**: Boolean indicating availability

### Security Features

- Input validation for all submitted data
- Artist authentication for artwork submission
- Immutable artwork records once submitted
- Decentralized storage of artwork metadata

### Contributing

We welcome contributions from artists, developers, and art enthusiasts! Please check our contribution guidelines and feel free to submit issues, feature requests, or pull requests.

### Community

Join our community:
- Discord: [Coming Soon]
- Twitter: [Coming Soon]
- Forum: [Coming Soon]

### License

This project is licensed under the MIT License - see the LICENSE file for details.

---

*"Art is the most intense mode of individualism that the world has known." - Oscar Wilde*

Transform the art world with blockchain technology. Create, showcase, and preserve art for generations to come.

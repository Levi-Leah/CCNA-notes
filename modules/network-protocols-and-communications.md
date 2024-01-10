# Network Protocols and Communications

## Questions/Cues

- Data communication
- Data flow
- Network protocols
- Transmission medium = link
- Simplex
- Half Duplex
- Full duplex
- Elements of network protocols
- Message encoding
- Message formatting and encapsulation
- Message timing
- Message size
- Numbering scheme
- Message delivery options

---

- Peer-to-peer networks
- Client Server networks

## Notes

- Data communication is exchange data between 2 nodes via some form of link or transmission media
  - Data workflow
  - Simplex
    - Unidirectional: one device transmits and another receives
      - Keyboard, monitors (non touch)
  - Half duplex
    - Data flows in both directions but not at the same time
      - Walkie Talkie
  - Full duplex
    - Data flows in both directions at the same time
      - Telephone line

- Protocols
  - Rules that govern communications
  - Determines what, how, and when is communicated on the network
  - All protocols have these things:
    - Source or sender
    - Destination of the receiver
    - Chanel of the media

- Elements of protocol is defined by:
  - Encoded
  - Formatting is encapsulated
  - Timing
  - Size
  - Delivery options

- Encoding:
  1. Message source
  2. Encoder
  3. Transmitter
  4. Transmission Medium
     - Has a limit for the size of the data it can transmit
  5. Receiver
  6. Decoder
  7. Message Destination

- Formatting and Encapsulation:
  - Agreed format
  - (Encapsulation) Identify the sender and the receiver correctly

- Message size
  - Data should be broken down into smaller messages to accommodate transmission medium limits

- Timing
  - Flow control
    - Avoids data loss
    - E.g. when sender is faster than the receiver
  - Response timeous
    - How much time we should wait for the acknowledgment

- Message delivery options:
  - Unicast
    - One sender and one receiver
  - Multicast
    - Data is sent to a set of receiver, but not all the participants
      - FM Radio
  - Broadcast
    - Data is sent to all the network participants

---

- Peer-to-peer network
  - No centralized administration
  - All peers are equal
  - Works for smaller sharing apps
  - Downside: not scalable
  - Bound by the # of computer ports
- Server network
  - Centralized administration
  - slave/master
  - Request-response model
  - Scalable
  - Downside: Server can be overloaded

---

## Summary

---
layout: default
title: Contact
---

<form action="https://formspree.io/f/xbgjdrnq" method="POST">
  <label for="email">
    Email
    <input 
      type="email" 
      id="email" 
      name="email" 
      placeholder="your@email.com" 
      required 
      autocomplete="email"
    />
    <small>Enter a valid email address</small>
  </label>

  <label for="name">
    Name
    <input 
      type="text" 
      id="name" 
      name="name" 
      placeholder="Your Name" 
      required 
      minlength="2"
    />
    <small>Minimum 2 characters</small>
  </label>

  <label for="message">
    Message
    <textarea id="message" name="message" rows="4" placeholder="Your message..." required minlength="2"></textarea>
  </label>

  <button type="submit">Send</button>
</form>

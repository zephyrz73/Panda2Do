import React from 'react';
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import logo from '../../assets/images/panda2do-logo.png';

function AppBar() {
  return (
    <>
      <Navbar bg="dark" variant="dark">
        <Container>
          <img src={logo} style={{width: "20px", height: "20px", marginRight: "10px"}}alt="panda2do logo"></img>
          <Navbar.Brand href="#home">Panda2Do</Navbar.Brand>
          <Nav className="me-auto">
            <Nav.Link href="home">Home</Nav.Link>
            <Nav.Link href="tags">Tags</Nav.Link>
            <Nav.Link href="posts">Posts</Nav.Link>
          </Nav>
        </Container>
      </Navbar>
    </>
  );
}

export default AppBar;
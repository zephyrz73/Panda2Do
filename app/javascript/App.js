import 'App.css';
import React from 'react';
import { Routes, Route } from "react-router-dom";
import Home from './components/Home';
import Auth from './components/Auth';
import MyProfile from './components/MyProfile';
import Tags from './components/Tags';
import TagPosts from './components/TagPosts';
import Posts from './components/Posts';
import PostComments from './components/PostComments';
import AppBar from './components/AppBar';
function App() {
  return (
    <div>
    <AppBar></AppBar>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="login" element={<Auth type="login"/>}/>
      <Route path="signup" element={<Auth type="signup"/>}/>
      <Route path="myprofile" element={<MyProfile />} />
      <Route path="tags" element={<Tags />}>
        <Route path="posts" element={<TagPosts />}/>
      </Route>
      <Route path="posts" element={<Posts />}>
        <Route path="comments" element={<PostComments />}/>
      </Route>
    </Routes>
    </div>
  )
}
export default App;
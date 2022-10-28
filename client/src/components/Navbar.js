import { NavLink } from "react-router-dom"

const Navbar = () => {
    return (
        <div id='navbar'>
          
            <NavLink to={'/'}>
          <p className="navbar-brand" id="Home">Review Haiku</p>
            </NavLink>
            <div id='buttonbar'>
            <NavLink to={'/movies'}>
                <button className="navButton">Movies</button>
            </NavLink>

            <NavLink to={'/reviews'}>
          <button className="navButton">Reviews</button>
            </NavLink>

            <NavLink to={'/users'}>
          <button className="navButton">Users</button>
            </NavLink>
        </div>
        
        </div>
    )
}

export default Navbar;



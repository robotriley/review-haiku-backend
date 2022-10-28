import { NavLink } from "react-router-dom"

const Navbar = () => {
    return (
        <div id='navbar'>
            <NavLink to={'/'}>
                <h2 className="navbar-brand" id="Home">Haiku Review</h2>
            </NavLink>
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
    )
}

export default Navbar;



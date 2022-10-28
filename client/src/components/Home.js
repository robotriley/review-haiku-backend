import Navbar from "./Navbar"

const Home = () => {
    return (
        <div>
          <Navbar />
        <div id="homePage">
            <div className="homeSectionDiv">
              <h2 className="section-header">Welcome</h2>
                <p className="homeSectionP">
                  This is a website< br />< br />
                  Where you can review a film<br />< br />
                  In haiku ONLY</p>
            </div>
            <div className="homeSectionDiv">
              <h2 className="section-header">Haiku</h2>
                <p className="homeSectionP">
                  What is a haiku?< br />< br />
                  A 3 line poem in which< br />< br />
                  Syllables matter</p>
            </div>
            <div className="homeSectionDiv">
              <h2 className="section-header">Format</h2>
            <p className="homeSectionP">
              One: Five Syllables< br />< br />
              Line Two: Seven Syllables< br />< br />
              Three: Five Syllables</p>
            </div>
        </div>
        </div>
    )
}

export default Home
import Navbar from "./Navbar"

const Home = () => {
    return (
        <div>

            <Navbar />
        <div id="homePage">
            <div className="homeSectionDiv">
            <h2 className="App-header">Welcome</h2>
            <h3>This is a website</h3>
            <h3>Where you can review a film</h3>
            <h3>In haiku ONLY</h3>
            </div>
            <div className="homeSectionDiv">
            <h2 className="App-header">Haiku</h2>
            <h3>What is a haiku?</h3>
            <h3>A 3 line poem in which</h3>
            <h3>Syllables matter</h3>
            </div>
            <div className="homeSectionDiv">
            <h2 className="App-header">Format</h2>
            <h3>One: Five Syllables</h3>
            <h3>Line Two: Seven Syllables</h3>
            <h3>Three: Five Syllables</h3>
            </div>
        </div>
        </div>
    )
}

export default Home
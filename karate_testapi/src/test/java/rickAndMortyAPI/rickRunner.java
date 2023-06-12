package rickAndMortyAPI;

import com.intuit.karate.junit5.Karate;

public class rickRunner {
    
    @Karate.Test
    Karate testPokemon() {
        return Karate.run("rick").relativeTo(getClass());
    }    
}

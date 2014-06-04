concrete EngExt of DCECExt = Eng ** open  SyntaxEng, ConstructorsEng, ParadigmsEng in {

      --- *** Domain Specific ***
    lin
    
    jack   = {descr = (mkNP (mkN "named Jack")); name = (mkNP (mkN "Jack")) } ;
    cogito = {descr = (mkNP (mkN "named Cogito")); name = (mkNP (mkN "Cogito")) };


    robot1   = {descr = (mkNP (mkN "named Robot 1")); name = (mkNP (mkN "Robot 1")) } ;
    robot2 = {descr = (mkNP (mkN "named Robot 2")); name = (mkNP (mkN "Robot 2")) };
    robot3 = {descr = (mkNP (mkN "named Robot 3")); name = (mkNP (mkN "Robot 3")) };




    -- Unary ActionTypes
    laugh = (mkV "laugh" "laughed" "laughed");
    die = (mkV "die" "died" "died");
    sleep = (mkV "sleep" "slept" "slept");
    eat = (mkV "eat" "ate" "eaten");
    -- Binary ActionTypes
    hurt2 a= {verb = (mkV2 (mkV "hurt" "hurt" "hurt")); arg = a.name};
    guard2 a= {verb = (mkV2 (mkV "guard")); arg =  a.name};
    harm2 a= {verb = (mkV2 (mkV "harm")); arg =  a.name};
    disable2 a= {verb = (mkV2 (mkV "disable")); arg =  a.name};
    destroy2 a= {verb = (mkV2 (mkV "destroy")); arg =  a.name};
    shoot2 a= {verb = (mkV2 (mkV "shoot" "shot" "shot")); arg =  a.name};

    
    raining = (mkCl (mkVP (mkV "rain")));
    snowing = (mkCl (mkVP (mkV "snow")));

    hungry agent = (mkCl agent.name  (mkAP (mkA "hungry"))) ;
    tired agent = (mkCl agent.name  (mkAP (mkA "tired"))) ;
    sick agent = (mkCl agent.name  (mkAP (mkA "sick"))) ;
    sad agent = (mkCl agent.name  (mkAP (mkA "sad"))) ;
    happy agent = (mkCl agent.name  (mkAP (mkA "happy"))) ;
    angry agent = (mkCl agent.name (mkAP (mkA "angry"))) ;
}
abstract DCEC = {

  flags startcat = Boolean ;
	
  cat  Agent; ActionType1; ActionType2; Event; Moment; Boolean; Fluent;
      
  fun

    -- Logic
    and : Boolean -> Boolean -> Boolean; 
    if : Boolean -> Boolean -> Boolean; 
    or : Boolean -> Boolean -> Boolean; 
    
    -- Modalities
    P: Agent -> Moment -> Boolean -> Boolean;
    K: Agent -> Moment -> Boolean -> Boolean;
    B: Agent -> Moment -> Boolean -> Boolean;
    S1: Agent -> Moment -> Boolean -> Boolean;
    D: Agent -> Moment -> Boolean -> Boolean;
    I1: Agent -> Moment -> ActionType1 -> Moment -> Boolean;
    I2: Agent -> Moment -> ActionType2 -> Moment -> Boolean;
    -- Event Calculus
    happens : Event -> Moment -> Boolean;

    initially: Fluent -> Boolean;

    action1 : Agent -> ActionType1 -> Event ;
    action2 : Agent -> ActionType2 -> Event ;


    --- *** Domain Specific ***
    --- TODO: Modularize Specific Domains
    -- Agents, ActionTypes, Moments and Fluents
    --- Agents
    jack, cogito  : Agent ;
    
    --- ActionTypes
    sleep1 : ActionType1 ;
    hurt2, guard2 : Agent-> ActionType2;
    
    --- Moments
    now,tf,tp: Moment;
    
    --- Fluents
    raining, snowing : Fluent;
    hungry,tired, sick,sad,happy,angry: Agent->Fluent;
  }
      
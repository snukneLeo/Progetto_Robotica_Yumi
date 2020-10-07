MODULE T_Module1
    CONST robtarget Home_left:=[[176.75,370.63,139.73],[0.0198664,0.742438,-0.669407,0.016879],[0,1,-1,4],[119.472,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition_left:=[[346.30,103.24,74.87],[0.0219299,0.707568,-0.706253,0.00854663],[-1,2,-1,4],[125.739,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition_left:=[[346.30,103.24,31.55],[0.0219304,0.70757,-0.706251,0.00854522],[-1,2,-1,4],[125.736,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition_left:=[[413.58,21.53,73.46],[0.021934,0.70757,-0.706251,0.00853982],[-1,2,-1,4],[125.731,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition_left:=[[413.58,21.53,31.23],[0.0219354,0.707571,-0.70625,0.00854205],[-1,2,-1,4],[125.729,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlaceotherPosition_left:=[[281.35,13.56,72.07],[0.0219347,0.707571,-0.706251,0.0085418],[-1,2,-1,4],[125.725,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceotherPosition_left:=[[281.07,14.94,33.63],[0.0210531,0.707422,-0.706469,0.0034245],[-1,2,-1,4],[125.136,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home:=[[331.583642938,298.173285223,155.241800548],[0.152146153,0.90698621,-0.326350767,0.21845535],[-1,1,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition:=[[330.40595962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition:=[[330.40595962,-4.47168768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition:=[[396.44095962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition:=[[396.44095962,-4.47168768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget A:=[[361.66,29.67,286.26],[0.496054,0.498526,-0.501932,0.503455],[-1,1,-1,4],[135.38,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget B:=[[361.82,-11.36,286.22],[0.496056,0.498524,-0.501931,0.503455],[-1,1,-1,4],[135.38,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    
    PERS tasks T_syncRobot{2}:=[["T_ROB_R"],["T_ROB_L"]];
    VAR syncident T_sync_startL;
    VAR syncident T_sync_startL2;
    VAR syncident T_sync_startL3;
!***********************************************************
    !
    ! Modulo:  Module1
    !
    ! Descrizione:
    !   <Inserire descrizione qui>
    !
    ! Autore: Leonardo Testolin
    !
    ! Versione: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedura main
    !
    !   Questo è il punto di ingresso del programma
    !
    !***********************************************************
    PROC T_main()
        !goHome;
        Hand_init;
        !Aggiungere il codice in questo punto
        Path_threetask_left; !terzo task
        Path_Left; !secondo task
    ENDPROC
    PROC Path_threetask_left()
        Hand_GripOutward;
        Hand_Stop;
        MoveL Home_left,v1000,fine,tGripper\WObj:=wobj0;
        WaitSyncTask T_sync_startL, T_syncRobot;
        !WaitTime 4;
        !MoveL PickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL A,v1000,fine,tGripper\WObj:=wobj0;
        MoveL B,v1000,fine,tGripper\WObj:=wobj0;
        WaitRob \InPos;
        Hand_GripInward;
        WaitSyncTask T_sync_startL2, T_syncRobot;
        MoveL A,v1000,fine,tGripper\WObj:=wobj0;
        WaitSyncTask T_sync_startL3, T_syncRobot;
        !WaitTime 3;
        MoveL AbovePlacePosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PlacePosition_left,v1000,fine,tGripper\WObj:=wobj0;
        WaitRob \InPos;
        Hand_GripOutward;
        Hand_Stop;
        MoveL AbovePlacePosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL Home_left,v1000,fine,tGripper\WObj:=wobj0;
    ENDPROC
    PROC Path_left()
        Hand_GripOutward;
        Hand_Stop;
        MoveL Home_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        WaitRob \InPos;
        Hand_GripInward;
        MoveL AbovePickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePlacePosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PlacePosition_left,v1000,fine,tGripper\WObj:=wobj0;
        Hand_GripOutward;
        Hand_Stop;
        MoveL AbovePlacePosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        WaitSyncTask T_sync_startL3, T_syncRobot;
        WaitSyncTask T_sync_startL, T_syncRobot;
        MoveL AbovePickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        !WaitTime 4;
        MoveL AbovePlaceotherPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PlaceotherPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        WaitRob \InPos;
        Hand_GripInward;
        MoveL AbovePlaceotherPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        Hand_GripOutward;
        Hand_Stop;
        MoveL AbovePickPosition_left,v1000,fine,tGripper\WObj:=wobj0;
        WaitSyncTask T_sync_startL2, T_syncRobot;
        MoveL Home_left,v1000,fine,tGripper\WObj:=wobj0;
    ENDPROC
ENDMODULE
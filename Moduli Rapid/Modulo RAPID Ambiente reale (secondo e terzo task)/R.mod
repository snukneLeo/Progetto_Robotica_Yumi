MODULE T_Module1
    CONST robtarget Home_right:=[[370.32,-353.63,241.94],[0.0368872,0.199144,-0.978049,0.0490077],[0,-1,0,4],[161.607,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition_right:=[[367.07,-67.30,108.71],[0.0175413,-0.999694,-0.00212827,-0.0173088],[1,-1,-1,4],[-168.651,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition_right:=[[367.06,-67.30,31.24],[0.0175347,-0.999694,-0.00212901,-0.0173051],[1,-2,-1,4],[-168.651,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition_right:=[[285.07,22.18,98.20],[0.0175359,-0.999694,-0.00213481,-0.0173054],[1,-2,-1,4],[-168.651,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition_right:=[[285.07,22.18,31.47],[0.0175313,-0.999694,-0.00213425,-0.0173033],[1,-2,-1,4],[-168.65,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlaceOtherPosition_right:=[[416.96,22.17,75.74],[0.0175268,-0.999694,-0.00213136,-0.017306],[1,-1,-1,4],[-168.649,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceOtherPosition_right:=[[416.95,22.18,31.89],[0.0175264,-0.999694,-0.00213252,-0.0173055],[1,-2,-1,4],[-168.648,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ChangePickposition_right:=[[358.95,6.75,288.56],[0.001195,-0.00146889,-0.692043,-0.721854],[1,0,0,4],[-178.219,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS tasks T_syncRobot{2}:=[["T_ROB_R"],["T_ROB_L"]];
    VAR syncident T_sync_startL;
    VAR syncident T_sync_startL2;
    VAR syncident T_sync_startL3;
    CONST robtarget outzone:=[[367.07,-152.78,108.71],[0.0175307,-0.999695,-0.00211603,-0.0172918],[1,-1,-1,4],[-168.651,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
        Path_threetask_right; !Terzo task
        Path_rigth; !Secondo task
    ENDPROC
    PROC Path_threetask_right()
        Hand_GripOutward;
        Hand_Stop;
        !WaitTime 2.5;
        MoveL Home_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePickPosition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PickPosition_right,v1000,fine,tGripper\WObj:=wobj0;
        WaitRob \InPos;
        Hand_GripInward;
        MoveL AbovePickPosition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL ChangePickposition_right,v1000,fine,tGripper\WObj:=wobj0;
        WaitSyncTask T_sync_startL, T_syncRobot;
        WaitSyncTask T_sync_startL2, T_syncRobot;
        Hand_GripOutward;
        Hand_Stop;
        WaitSyncTask T_sync_startL3, T_syncRobot;
        !WaitTime 3;
        MoveL Home_right,v1000,fine,tGripper\WObj:=wobj0;
        !WaitTime 1;
    ENDPROC
    PROC Path_rigth()
        Hand_GripOutward;
        Hand_Stop;
        MoveL Home_right,v1000,fine,tGripper\WObj:=wobj0;
        WaitSyncTask T_sync_startL3, T_syncRobot;
        MoveL AbovePickposition_right,v1000,fine,tGripper\WObj:=wobj0;
        !WaitTime 2;
        MoveL Pickposition_right,v1000,fine,tGripper\WObj:=wobj0;
        WaitRob \InPos;
        Hand_GripInward;
        MoveL AbovePickposition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePlacePosition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PlacePosition_right,v1000,fine,tGripper\WObj:=wobj0;
        Hand_GripOutward;
        Hand_Stop;
        MoveL AbovePlacePosition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL outzone,v1000,fine,tGripper\WObj:=wobj0;
        WaitSyncTask T_sync_startL, T_syncRobot;
        WaitSyncTask T_sync_startL2, T_syncRobot;
        !MoveL AbovePlacePosition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePlaceOtherPosition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL PlaceOtherPosition_right,v1000,fine,tGripper\WObj:=wobj0;
        WaitRob \InPos;
        Hand_GripInward;
        MoveL AbovePlaceOtherPosition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL AbovePickposition_right,v1000,fine,tGripper\WObj:=wobj0;
        MoveL Pickposition_right,v1000,fine,tGripper\WObj:=wobj0;
        Hand_GripOutward;
        Hand_Stop;
        MoveL AbovePickposition_right,v1000,fine,tGripper\WObj:=wobj0;
    ENDPROC
ENDMODULE
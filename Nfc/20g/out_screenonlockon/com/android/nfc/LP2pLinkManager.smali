.class public Lcom/android/nfc/LP2pLinkManager;
.super Lcom/android/nfc/P2pLinkManager;
.source "LP2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LP2pLinkManager$LConnectTask;,
        Lcom/android/nfc/LP2pLinkManager$LSendTask;
    }
.end annotation


# static fields
.field static final LG_SHARING_SAP:I = 0x1f

.field static final MSG_LLCP_DEACTIVATED_EXCEPTION:I = 0x34

.field private static final TAG:Ljava/lang/String; = "LP2pLinkManager"

.field static mDefaultFragmentLength:I


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field final mLEventListener:Lcom/android/nfc/LP2pEventListener;

.field final mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

.field final mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

.field final mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/android/nfc/LP2pLinkManager;->mDefaultFragmentLength:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverDataParser;Lcom/android/nfc/lgsharing/LSharingManager;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/LHandoverDataParser;
    .param p3, "sharingManager"    # Lcom/android/nfc/lgsharing/LSharingManager;
    .param p4, "defaultMiu"    # I
    .param p5, "defaultRwSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    .line 67
    iput-object p2, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    .line 68
    iput-object p3, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 69
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 72
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_2c

    .line 73
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingServer;

    const/16 v2, 0x1f

    invoke-direct {v0, v2, p3}, Lcom/android/nfc/lgsharing/LSharingServer;-><init>(ILcom/android/nfc/lgsharing/LSharingManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    .line 78
    :goto_1f
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    instance-of v0, v0, Lcom/android/nfc/LP2pEventListener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    check-cast v0, Lcom/android/nfc/LP2pEventListener;

    :goto_29
    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pEventListener;

    .line 79
    return-void

    .line 75
    :cond_2c
    iput-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    goto :goto_1f

    :cond_2f
    move-object v0, v1

    .line 78
    goto :goto_29
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverDataParser;Lcom/android/nfc/lgsharing/LSharingManager;III)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/LHandoverDataParser;
    .param p3, "sharingManager"    # Lcom/android/nfc/lgsharing/LSharingManager;
    .param p4, "defaultMiu"    # I
    .param p5, "defaultRwSize"    # I
    .param p6, "defaultFragmentLength"    # I

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/LP2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverDataParser;Lcom/android/nfc/lgsharing/LSharingManager;II)V

    .line 84
    sput p6, Lcom/android/nfc/LP2pLinkManager;->mDefaultFragmentLength:I

    .line 85
    return-void
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 243
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v4, v5

    .line 257
    :cond_9
    :goto_9
    return v4

    .line 246
    :cond_a
    iget-object v3, p0, Lcom/android/nfc/LP2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 247
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_32

    .line 249
    const-string v3, "LP2pLinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "intent is null! (pkgName : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 250
    goto :goto_9

    .line 252
    :cond_32
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 253
    .local v1, "list":Ljava/util/List;
    const-string v6, "LP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " list : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_61

    move v3, v4

    :goto_4c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5f
    move v4, v5

    .line 255
    goto :goto_9

    .line 253
    :cond_61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_4c
.end method

.method public checkLgSharing()V
    .registers 4

    .prologue
    .line 104
    const/4 v0, 0x1

    const-string v1, "LP2pLinkManager"

    const-string v2, "enableLgSharing"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 105
    monitor-enter p0

    .line 106
    :try_start_9
    iget-boolean v0, p0, Lcom/android/nfc/LP2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    if-nez v0, :cond_13

    .line 107
    :cond_11
    monitor-exit p0

    .line 116
    :goto_12
    return-void

    .line 110
    :cond_13
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 111
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->start()V

    .line 105
    :goto_24
    monitor-exit p0

    goto :goto_12

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v0

    .line 113
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->stop()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    goto :goto_24
.end method

.method connectLlcpServices()V
    .registers 3

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_c

    .line 326
    const-string v0, "LP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_c
    new-instance v0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LP2pLinkManager$LConnectTask;-><init>(Lcom/android/nfc/LP2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 329
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    monitor-exit p0

    .line 331
    return-void

    .line 324
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public enableDisable(ZZ)V
    .registers 5
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 89
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_37

    .line 90
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/LP2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_24

    if-eqz p2, :cond_24

    .line 91
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 92
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->start()V

    .line 89
    :cond_18
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_34

    .line 100
    :try_start_19
    invoke-super {p0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_37

    .line 101
    invoke-static {}, Lcom/android/nfc/AP2pLinkManager;->aspectOf()Lcom/android/nfc/AP2pLinkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/nfc/AP2pLinkManager;->ajc$after$com_android_nfc_AP2pLinkManager$1$24810374(Lcom/android/nfc/P2pLinkManager;)V

    return-void

    .line 94
    :cond_24
    :try_start_24
    iget-boolean v0, p0, Lcom/android/nfc/LP2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_18

    if-nez p2, :cond_18

    .line 95
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    if-eqz v0, :cond_18

    .line 96
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->stop()V

    goto :goto_18

    .line 89
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_34

    :try_start_36
    throw v0
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_37

    .line 101
    :catch_37
    move-exception v0

    invoke-static {}, Lcom/android/nfc/AP2pLinkManager;->aspectOf()Lcom/android/nfc/AP2pLinkManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/nfc/AP2pLinkManager;->ajc$after$com_android_nfc_AP2pLinkManager$1$24810374(Lcom/android/nfc/P2pLinkManager;)V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_54

    .line 538
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->handleMessage(Landroid/os/Message;)Z

    .line 541
    :goto_9
    return v3

    .line 507
    :sswitch_a
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_13

    .line 508
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->resetSharingMap()V

    .line 510
    :cond_13
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->handleMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 513
    :sswitch_17
    monitor-enter p0

    .line 514
    const/4 v0, 0x0

    :try_start_19
    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 516
    iget v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLinkState:I

    if-ne v0, v3, :cond_24

    .line 517
    monitor-exit p0

    goto :goto_9

    .line 513
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0

    .line 519
    :cond_24
    const/4 v0, 0x1

    :try_start_25
    iput v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    .line 521
    const/4 v0, 0x1

    const-string v1, "LP2pLinkManager"

    const-string v2, "onP2pHandoverNotSupported()"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 523
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_21

    goto :goto_9

    .line 527
    :sswitch_36
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->onLlcpDeactivated()V

    goto :goto_9

    .line 530
    :sswitch_3a
    iget v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLinkState:I

    if-eq v0, v3, :cond_43

    iget v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_50

    .line 531
    :cond_43
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mContext:Landroid/content/Context;

    const v1, 0x7f08000c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 534
    :cond_50
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->handleMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 505
    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_a
        0x7 -> :sswitch_17
        0xa -> :sswitch_3a
        0x34 -> :sswitch_36
    .end sparse-switch
.end method

.method protected isBeamAvailable()Z
    .registers 3

    .prologue
    .line 262
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->getInstance()Lcom/android/nfc/beam/LBeamManager;

    move-result-object v0

    .line 263
    .local v0, "beamManager":Lcom/android/nfc/beam/LBeamManager;
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v1, :cond_15

    .line 264
    if-eqz v0, :cond_15

    .line 265
    invoke-virtual {v0}, Lcom/android/nfc/beam/LBeamManager;->isBeamInProgress()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 266
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->onHandoverBusy()V

    .line 267
    const/4 v1, 0x0

    .line 274
    :goto_14
    return v1

    .line 270
    :cond_15
    iget v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    .line 271
    const/4 v1, 0x1

    goto :goto_14

    .line 274
    :cond_1d
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/LP2pEventListener;->isAvailableBeam()Z

    move-result v1

    goto :goto_14
.end method

.method public bridge synthetic isLlcpActive()Z
    .registers 2

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->isLlcpActive()Z

    move-result v0

    return v0
.end method

.method public onLlcpActivated(B)V
    .registers 4
    .param p1, "peerLlcpVersion"    # B

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/LHandoverDataParser;->handoverLLCPActivated()V

    .line 124
    :cond_9
    const-string v0, "LP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 127
    iget v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLinkState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_21

    .line 128
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0, p0}, Lcom/android/nfc/lgsharing/LSharingManager;->sendSharingServices(Ljava/lang/Object;)V

    .line 130
    :cond_21
    return-void
.end method

.method public onLlcpDeactivated()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->onLlcpDeactivated()V

    .line 137
    :cond_9
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 138
    return-void
.end method

.method public bridge synthetic onLlcpFirstPacketReceived()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    return-void
.end method

.method onLlcpServicesConnected()V
    .registers 6

    .prologue
    .line 306
    iget v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2c

    .line 307
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    iget-object v2, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/LHandoverDataParser;->getBeamTitleString(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "title":Ljava/lang/String;
    :goto_e
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pEventListener;

    invoke-interface {v1, v0}, Lcom/android/nfc/LP2pEventListener;->setBeamTitle(Ljava/lang/String;)Z

    .line 309
    const/4 v1, 0x1

    const-string v2, "LP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLlcpServicesConnected - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    .line 311
    return-void

    .line 307
    .end local v0    # "title":Ljava/lang/String;
    :cond_2c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public bridge synthetic onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .registers 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    return-void
.end method

.method public bridge synthetic onP2pCanceled()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onP2pCanceled()V

    return-void
.end method

.method public bridge synthetic onP2pSendConfirmed()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed()V

    return-void
.end method

.method protected onP2pSendConfirmed(Z)V
    .registers 3
    .param p1, "requireConfirmation"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->setRunningAndroidBeam()V

    .line 283
    :cond_9
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 284
    return-void
.end method

.method protected onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_9

    .line 298
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->setRunningAndroidBeam()V

    .line 301
    :cond_9
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onReceiveComplete(Landroid/nfc/NdefMessage;)V

    .line 302
    return-void
.end method

.method protected onReceiveHandover()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->setRunningAndroidBeam()V

    .line 292
    :cond_9
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onReceiveHandover()V

    .line 293
    return-void
.end method

.method public bridge synthetic onUserSwitched(I)V
    .registers 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    return-void
.end method

.method prepareMessageToSend(Z)V
    .registers 19
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v11, :cond_e

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v11}, Lcom/android/nfc/lgsharing/LSharingManager;->onLlcpActivated()V

    .line 149
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/nfc/LP2pLinkManager;->mNdefCallbackUid:I

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "mValidCallbackPackages":[Ljava/lang/String;
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mNdefCallbackUid : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/LP2pLinkManager;->mNdefCallbackUid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v11}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v3

    .line 153
    .local v3, "foregroundUids":Ljava/util/List;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/nfc/LP2pLinkManager;->mIsSendEnabled:Z

    if-eqz v11, :cond_5f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6b

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/LP2pLinkManager;->isBeamDisabled(I)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 154
    :cond_5f
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 155
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 156
    monitor-exit p0

    .line 239
    :goto_6a
    return-void

    .line 159
    :cond_6b
    const/4 v8, 0x0

    .line 160
    .local v8, "runningPackage":Ljava/lang/String;
    const/4 v9, -0x1

    .line 161
    .local v9, "runningPackageUid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 162
    .local v7, "processes":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_79
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_98

    .line 180
    :goto_7f
    if-nez v8, :cond_d8

    .line 181
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    const-string v13, "Could not determine running package."

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 183
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 184
    monitor-exit p0

    goto :goto_6a

    .line 143
    .end local v3    # "foregroundUids":Ljava/util/List;
    .end local v4    # "mValidCallbackPackages":[Ljava/lang/String;
    .end local v7    # "processes":Ljava/util/List;
    .end local v8    # "runningPackage":Ljava/lang/String;
    .end local v9    # "runningPackageUid":I
    :catchall_95
    move-exception v11

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_95

    throw v11

    .line 162
    .restart local v3    # "foregroundUids":Ljava/util/List;
    .restart local v4    # "mValidCallbackPackages":[Ljava/lang/String;
    .restart local v7    # "processes":Ljava/util/List;
    .restart local v8    # "runningPackage":Ljava/lang/String;
    .restart local v9    # "runningPackageUid":I
    :cond_98
    :try_start_98
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 163
    .local v6, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v13, 0x64

    if-ne v12, v13, :cond_79

    .line 166
    iget-object v11, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v8, v11, v12

    .line 167
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 169
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RunningPackage : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RunningPackageUID : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 188
    .end local v6    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_d8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v11, :cond_150

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "callbackValid":Z
    if-eqz v4, :cond_e5

    .line 194
    array-length v12, v4
    :try_end_e2
    .catchall {:try_start_98 .. :try_end_e2} :catchall_95

    const/4 v11, 0x0

    :goto_e3
    if-lt v11, v12, :cond_10e

    .line 203
    :cond_e5
    :goto_e5
    if-eqz v1, :cond_1ba

    .line 206
    :try_start_e7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    move-object/from16 v0, p0

    iget-byte v12, v0, Lcom/android/nfc/LP2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v11, v12}, Landroid/nfc/IAppCallback;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v10

    .line 207
    .local v10, "shareData":Landroid/nfc/BeamShareData;
    iget-object v11, v10, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 208
    iget-object v11, v10, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 209
    iget v11, v10, Landroid/nfc/BeamShareData;->flags:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    .line 210
    iget-object v11, v10, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mUserHandle:Landroid/os/UserHandle;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_10b} :catch_136
    .catchall {:try_start_e7 .. :try_end_10b} :catchall_95

    .line 211
    :try_start_10b
    monitor-exit p0

    goto/16 :goto_6a

    .line 194
    .end local v10    # "shareData":Landroid/nfc/BeamShareData;
    :cond_10e
    aget-object v5, v4, v11

    .line 195
    .local v5, "pkg":Ljava/lang/String;
    const/4 v13, 0x1

    const-string v14, "LP2pLinkManager"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "mValidCallbackPackages : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_131

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/nfc/LP2pLinkManager;->mNdefCallbackUid:I

    if-ne v13, v9, :cond_133

    .line 197
    :cond_131
    const/4 v1, 0x1

    .line 198
    goto :goto_e5

    .line 194
    :cond_133
    add-int/lit8 v11, v11, 0x1

    goto :goto_e3

    .line 212
    .end local v5    # "pkg":Ljava/lang/String;
    :catch_136
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed NDEF callback: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v1    # "callbackValid":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_150
    :goto_150
    if-eqz p1, :cond_173

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/nfc/LP2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_173

    .line 226
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1c3

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/LP2pLinkManager;->isBeamDisabled(I)Z

    move-result v11

    if-eqz v11, :cond_1c3

    .line 227
    :cond_173
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    const-string v13, "Disabling default Beam behavior"

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 229
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 235
    :goto_185
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mMessageToSend = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mUrisToSend = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 143
    monitor-exit p0

    goto/16 :goto_6a

    .line 219
    .restart local v1    # "callbackValid":Z
    :cond_1ba
    const/4 v11, 0x1

    const-string v12, "LP2pLinkManager"

    const-string v13, "Last registered callback is not running in the foreground."

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_150

    .line 231
    .end local v1    # "callbackValid":Z
    :cond_1c3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/nfc/LP2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 232
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_1d2
    .catchall {:try_start_10b .. :try_end_1d2} :catchall_95

    goto :goto_185
.end method

.method public sendNdefMessage()V
    .registers 3

    .prologue
    .line 315
    monitor-enter p0

    .line 316
    :try_start_1
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->cancelSendNdefMessage()V

    .line 317
    new-instance v0, Lcom/android/nfc/LP2pLinkManager$LSendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LP2pLinkManager$LSendTask;-><init>(Lcom/android/nfc/LP2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 318
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    monitor-exit p0

    .line 320
    return-void

    .line 315
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public bridge synthetic setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    return-void
.end method

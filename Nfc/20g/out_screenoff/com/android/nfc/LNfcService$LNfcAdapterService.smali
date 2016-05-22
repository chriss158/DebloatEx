.class public Lcom/android/nfc/LNfcService$LNfcAdapterService;
.super Lcom/android/nfc/NfcService$NfcAdapterService;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method public disable(Z)Z
    .registers 7
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1324
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1326
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1b

    .line 1327
    const-string v0, "LNfcService"

    const-string v1, "Defer Disable"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    sput-boolean v4, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    .line 1354
    :cond_1a
    :goto_1a
    return v4

    .line 1332
    :cond_1b
    const-string v0, "LNfcService"

    const-string v1, "disable"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v3, v0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    .line 1334
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->manageShutdown()V

    .line 1336
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/LNfcService;->checkPowerOffConfig(Z)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1340
    if-eqz p1, :cond_49

    .line 1341
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcService;->saveNfcOnSetting(Z)V

    .line 1342
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1343
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1344
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1352
    :cond_49
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1a
.end method

.method public disableNdefPush()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1385
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1387
    const-string v0, "LNfcService"

    const-string v1, "disableNdefPush"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1390
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1391
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1393
    return v4
.end method

.method public enable()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1289
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1291
    const-string v2, "LNfcService"

    const-string v3, "enable"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->checkNfcLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1294
    const-string v1, "LNfcService"

    const-string v2, "Because CEN status is LOW, enable() does not work."

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_1f
    :goto_1f
    return v0

    .line 1298
    :cond_20
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->saveAirplaneSetting()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1301
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1304
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_1f

    .line 1307
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcService;->saveNfcOnSetting(Z)V

    .line 1308
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1312
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1316
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1318
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 1319
    goto :goto_1f
.end method

.method public enableNdefPush()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1368
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1370
    const-string v2, "LNfcService"

    const-string v3, "enableNdefPush"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1380
    :cond_1c
    :goto_1c
    return v0

    .line 1374
    :cond_1d
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_1c

    .line 1377
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1378
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1379
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 1380
    goto :goto_1c
.end method

.method public getState()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1398
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1399
    :try_start_4
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v2, v2, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    if-eqz v2, :cond_c

    .line 1400
    monitor-exit v1

    .line 1415
    :goto_b
    return v0

    .line 1402
    :cond_c
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_27

    .line 1403
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_27

    .line 1404
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_27

    .line 1405
    monitor-exit v1

    const/4 v0, 0x3

    goto :goto_b

    .line 1406
    :cond_27
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3f

    .line 1407
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3f

    .line 1408
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_42

    .line 1409
    :cond_3f
    monitor-exit v1

    const/4 v0, 0x2

    goto :goto_b

    .line 1410
    :cond_42
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_5a

    .line 1411
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_5a

    .line 1412
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_5d

    .line 1413
    :cond_5a
    monitor-exit v1

    const/4 v0, 0x4

    goto :goto_b

    .line 1415
    :cond_5d
    monitor-exit v1

    goto :goto_b

    .line 1398
    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public isNdefPushEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1360
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget v0, v0, Lcom/android/nfc/LNfcService;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    .line 1361
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1362
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1360
    const/4 v0, 0x1

    :goto_17
    monitor-exit v1

    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    .line 1359
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

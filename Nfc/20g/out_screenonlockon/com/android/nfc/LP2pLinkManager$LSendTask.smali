.class Lcom/android/nfc/LP2pLinkManager$LSendTask;
.super Lcom/android/nfc/P2pLinkManager$SendTask;
.source "LP2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LP2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LSendTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LP2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/LP2pLinkManager;)V
    .registers 2

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    .registers 14
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v5, 0x0

    .line 360
    .local v5, "response":Landroid/nfc/NdefMessage;
    const/4 v2, 0x1

    .line 362
    .local v2, "handoverRunning":Z
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->getInstance()Lcom/android/nfc/beam/LBeamManager;

    move-result-object v0

    .line 363
    .local v0, "beamManager":Lcom/android/nfc/beam/LBeamManager;
    invoke-virtual {v0}, Lcom/android/nfc/beam/LBeamManager;->isBeamInProgress()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 364
    const/4 v7, 0x3

    .line 422
    :goto_d
    return v7

    .line 367
    :cond_e
    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v7, :cond_14

    .line 368
    :cond_12
    :goto_12
    if-nez v2, :cond_2e

    .line 392
    :cond_14
    if-nez v5, :cond_86

    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v7, :cond_86

    .line 396
    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/LP2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v7}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    .line 397
    .local v4, "request":Landroid/nfc/NdefMessage;
    if-nez v4, :cond_7c

    .line 398
    const/4 v7, 0x1

    const-string v8, "LP2pLinkManager"

    const-string v9, "request from mHandoverManager.createHandoverRequestMessage is null"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v7, 0x1

    goto :goto_d

    .line 369
    .end local v4    # "request":Landroid/nfc/NdefMessage;
    :cond_2e
    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/LP2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v7}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    .line 370
    .restart local v4    # "request":Landroid/nfc/NdefMessage;
    const/4 v7, 0x1

    const-string v8, "LP2pLinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handover request message : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 371
    if-eqz v4, :cond_7a

    .line 373
    :try_start_4d
    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v7, v4}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v5

    .line 374
    const/4 v7, 0x1

    const-string v8, "LP2pLinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handover select message : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_68} :catch_6c

    .line 383
    if-eqz v5, :cond_14

    .line 389
    const/4 v2, 0x0

    goto :goto_12

    .line 375
    :catch_6c
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HandoverRequestMessageRetry"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 380
    throw v1

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7a
    const/4 v7, 0x2

    goto :goto_d

    .line 401
    :cond_7c
    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v7, v4}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v6

    .line 402
    .local v6, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v5

    .line 404
    .end local v4    # "request":Landroid/nfc/NdefMessage;
    .end local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_86
    if-nez v5, :cond_8a

    .line 405
    const/4 v7, 0x2

    goto :goto_d

    .line 408
    :cond_8a
    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-virtual {v7, v5}, Lcom/android/nfc/handover/LHandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;

    move-result-object v3

    .line 410
    .local v3, "outgoingData":Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    iget-boolean v7, v3, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->valid:Z

    if-nez v7, :cond_99

    .line 411
    const/4 v7, 0x2

    goto/16 :goto_d

    .line 414
    :cond_99
    iget-boolean v7, v3, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->powerState:Z

    if-nez v7, :cond_a0

    .line 415
    const/4 v7, 0x3

    goto/16 :goto_d

    .line 418
    :cond_a0
    iget-object v7, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/LP2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v3, p1, p2}, Lcom/android/nfc/beam/LBeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_ad

    .line 419
    const/4 v7, 0x3

    goto/16 :goto_d

    .line 422
    :cond_ad
    const/4 v7, 0x0

    goto/16 :goto_d
.end method

.method doWPSHandover(Landroid/nfc/NdefMessage;Landroid/os/UserHandle;)I
    .registers 12
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    const/4 v4, 0x0

    .line 428
    .local v4, "response":Landroid/nfc/NdefMessage;
    const/4 v2, 0x1

    .line 429
    .local v2, "handoverRunning":Z
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->getInstance()Lcom/android/nfc/beam/LBeamManager;

    move-result-object v0

    .line 431
    .local v0, "beamManager":Lcom/android/nfc/beam/LBeamManager;
    invoke-virtual {v0}, Lcom/android/nfc/beam/LBeamManager;->isBeamInProgress()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 432
    const/4 v5, 0x3

    .line 460
    :goto_d
    return v5

    .line 435
    :cond_e
    const-string v5, "LP2pLinkManager"

    const-string v6, "Trying - doWPSHandover"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_15
    :goto_15
    if-nez v2, :cond_20

    .line 458
    iget-object v5, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/LP2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v4, p2}, Lcom/android/nfc/beam/LBeamManager;->startWPSBeamSend(Landroid/content/Context;Landroid/nfc/NdefMessage;Landroid/os/UserHandle;)Z

    .line 460
    const/4 v5, 0x0

    goto :goto_d

    .line 438
    :cond_20
    iget-object v5, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-virtual {v5, p1}, Lcom/android/nfc/handover/LHandoverDataParser;->getWPSRequestMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 439
    .local v3, "request":Landroid/nfc/NdefMessage;
    if-eqz v3, :cond_6e

    iget-object v5, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v5, :cond_6e

    .line 441
    const/4 v5, 0x1

    :try_start_2f
    const-string v6, "LP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doWPSHandover : request - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v5, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v5, v3}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v4

    .line 443
    const/4 v5, 0x1

    const-string v6, "LP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doWPSHandover : reponse - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5e} :catch_60

    .line 456
    const/4 v2, 0x0

    goto :goto_15

    .line 444
    :catch_60
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HandoverRequestMessageRetry"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 449
    throw v1

    .line 453
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6e
    const-string v5, "LP2pLinkManager"

    const-string v6, "doWPSHandover : HANDOVER_UNSUPPORTED"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v5, 0x2

    goto :goto_d
.end method

.method protected sendresultMessageforfinishBeamUI(Z)V
    .registers 4
    .param p1, "result"    # Z

    .prologue
    .line 467
    if-nez p1, :cond_b

    .line 468
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v0, v0, Lcom/android/nfc/LP2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    :cond_b
    return-void
.end method

.method protected tryWPSHandover(Landroid/nfc/NdefMessage;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "result":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/LP2pLinkManager$LSendTask;->doWPSHandover(Landroid/nfc/NdefMessage;Landroid/os/UserHandle;)I

    move-result v0

    .line 478
    .local v0, "handoverResult":I
    const/4 v2, 0x1

    const-string v3, "LP2pLinkManager"

    const-string v4, "Trying WPShandover request"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 480
    packed-switch v0, :pswitch_data_24

    .line 498
    :goto_10
    return v1

    .line 482
    :pswitch_11
    const/4 v1, 0x1

    .line 483
    goto :goto_10

    .line 485
    :pswitch_13
    const/4 v1, 0x0

    .line 486
    goto :goto_10

    .line 488
    :pswitch_15
    const/4 v1, 0x0

    .line 489
    iget-object v2, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-virtual {v2}, Lcom/android/nfc/LP2pLinkManager;->onHandoverBusy()V

    goto :goto_10

    .line 492
    :pswitch_1c
    const/4 v1, 0x0

    .line 493
    iget-object v2, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-virtual {v2}, Lcom/android/nfc/LP2pLinkManager;->onHandoverUnsupported()V

    goto :goto_10

    .line 480
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_13
        :pswitch_1c
        :pswitch_15
    .end packed-switch
.end method

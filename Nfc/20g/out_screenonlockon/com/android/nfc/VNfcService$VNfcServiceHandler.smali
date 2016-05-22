.class public Lcom/android/nfc/VNfcService$VNfcServiceHandler;
.super Lcom/android/nfc/LNfcService$LNfcServiceHandler;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VNfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/VNfcService;)V
    .registers 2

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 36
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 607
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    sparse-switch v29, :sswitch_data_3d0

    .line 767
    invoke-super/range {p0 .. p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 770
    :goto_c
    return-void

    .line 609
    :sswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 610
    .local v25, "route":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 611
    .local v24, "power":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 614
    .local v8, "aid":Ljava/lang/String;
    const-string v29, "*"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    .line 615
    .local v18, "isIncludeStarChar":Z
    if-eqz v18, :cond_39

    const/16 v29, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 616
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v29, v0

    invoke-static {v8}, Lcom/android/nfc/VNfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->routeAid([BIIZ)Z

    goto :goto_c

    .line 622
    .end local v8    # "aid":Ljava/lang/String;
    .end local v18    # "isIncludeStarChar":Z
    .end local v24    # "power":I
    .end local v25    # "route":I
    :sswitch_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/nfc/DeviceHost;->commitRouting()Z

    goto :goto_c

    .line 626
    :sswitch_67
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 627
    .local v13, "enable":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->SetScrnState(I)Z

    goto :goto_c

    .line 631
    .end local v13    # "enable":I
    :sswitch_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->clearAidTable()Z

    goto :goto_c

    .line 635
    :sswitch_8d
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Card Emulation message"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b3

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onOffHostAidSelected()V

    .line 643
    :cond_b3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/util/Pair;

    .line 644
    .local v28, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    move-object/from16 v0, v28

    iget-object v12, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/Pair;

    .line 645
    .local v12, "dataSrcInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    sget-boolean v30, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v31, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v32, "Event source : "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v32, ", evtSrc : "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    # getter for: Lcom/android/nfc/VNfcService;->SE_ID_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/android/nfc/VNfcService;->access$7()Ljava/util/Map;

    move-result-object v29

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v32, " , Not yet applied!"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 646
    sget-object v29, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_147

    .line 647
    new-instance v31, Landroid/util/Pair;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, [B

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [B

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v29, v31

    .line 646
    :goto_13c
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    invoke-super/range {p0 .. p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_c

    .line 648
    :cond_147
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v29, v0

    goto :goto_13c

    .line 654
    .end local v12    # "dataSrcInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    .end local v28    # "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    :sswitch_14e
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "SE EVENT CONNECTIVITY"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    .line 656
    .local v16, "evtSrcInfo":Ljava/lang/Integer;
    sget-object v29, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Event source "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v14, "eventConnectivityIntent":Landroid/content/Intent;
    const-string v29, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v30, "com.nxp.extra.SOURCE"

    # getter for: Lcom/android/nfc/VNfcService;->SE_ID_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/android/nfc/VNfcService;->access$7()Ljava/util/Map;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c2

    # getter for: Lcom/android/nfc/VNfcService;->SE_ID_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/android/nfc/VNfcService;->access$7()Ljava/util/Map;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    :goto_1a1
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Broadcasting Intent"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 659
    :cond_1c2
    const-string v29, ""

    goto :goto_1a1

    .line 665
    .end local v14    # "eventConnectivityIntent":Landroid/content/Intent;
    .end local v16    # "evtSrcInfo":Ljava/lang/Integer;
    :sswitch_1c5
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "EMVCO MULTI CARD DETECTED EVENT"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 667
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v15, "eventEmvcoMultiCardIntent":Landroid/content/Intent;
    const-string v29, "com.nxp.action.EMVCO_MULTIPLE_CARD_DETECTED"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Broadcasting Intent"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 674
    .end local v15    # "eventEmvcoMultiCardIntent":Landroid/content/Intent;
    :sswitch_1f4
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Card Removal message"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 676
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v11, "cardRemovalIntent":Landroid/content/Intent;
    const-string v29, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Broadcasting com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 683
    .end local v11    # "cardRemovalIntent":Landroid/content/Intent;
    :sswitch_219
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "APDU Received message"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [B

    .line 686
    .local v9, "apduBytes":[B
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 687
    .local v10, "apduReceivedIntent":Landroid/content/Intent;
    const-string v29, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    if-eqz v9, :cond_242

    array-length v0, v9

    move/from16 v29, v0

    if-lez v29, :cond_242

    .line 689
    const-string v29, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 691
    :cond_242
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Broadcasting com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 696
    .end local v9    # "apduBytes":[B
    .end local v10    # "apduReceivedIntent":Landroid/content/Intent;
    :sswitch_252
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "MIFARE access message"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [B

    .line 699
    .local v23, "mifareCmd":[B
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 700
    .local v21, "mifareAccessIntent":Landroid/content/Intent;
    const-string v29, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    if-eqz v23, :cond_2af

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2af

    .line 702
    const/16 v29, 0x1

    aget-byte v29, v23, v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 703
    .local v22, "mifareBlock":I
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Mifare Block="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v29, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    .end local v22    # "mifareBlock":I
    :cond_2af
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Broadcasting com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 712
    .end local v21    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v23    # "mifareCmd":[B
    :sswitch_2c1
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Target Deselected"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 713
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 714
    .local v17, "intent":Landroid/content/Intent;
    const-string v29, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "Broadcasting Intent"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    goto/16 :goto_c

    .line 720
    .end local v17    # "intent":Landroid/content/Intent;
    :sswitch_2f2
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "SE LISTEN MODE ACTIVATED"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 722
    .local v19, "listenModeActivated":Landroid/content/Intent;
    const-string v29, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 727
    .end local v19    # "listenModeActivated":Landroid/content/Intent;
    :sswitch_312
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "SE LISTEN MODE DEACTIVATED"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 728
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 729
    .local v20, "listenModeDeactivated":Landroid/content/Intent;
    const-string v29, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 736
    .end local v20    # "listenModeDeactivated":Landroid/content/Intent;
    :sswitch_332
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 737
    .local v7, "SWPReaderRequestedIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/ArrayList;

    .line 738
    .local v26, "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Ljava/lang/Integer;

    .line 741
    .local v27, "techs":[Ljava/lang/Integer;
    const-string v29, "com.nxp.nfc_extras.ACTION_SWP_READER_REQUESTED"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v29, "com.nxp.nfc_extras.extra.EXTRA_SWP_READER_TECH"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 743
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "SWP READER - Requested"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 750
    .end local v7    # "SWPReaderRequestedIntent":Landroid/content/Intent;
    .end local v26    # "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "techs":[Ljava/lang/Integer;
    :sswitch_37f
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 752
    .local v5, "SWPReaderActivatedIntent":Landroid/content/Intent;
    const-string v29, "com.nxp.nfc_extras.ACTION_SWP_READER_ACTIVATED"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "SWP READER - Activated"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 760
    .end local v5    # "SWPReaderActivatedIntent":Landroid/content/Intent;
    :sswitch_3a7
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 762
    .local v6, "SWPReaderDeActivatedIntent":Landroid/content/Intent;
    const-string v29, "com.nxp.nfc_extras.ACTION_SWP_READER_DEACTIVATED"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    sget-boolean v29, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v30, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v31, "SWP READER - DeActivated"

    invoke-static/range {v29 .. v31}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 607
    nop

    :sswitch_data_3d0
    .sparse-switch
        0x5 -> :sswitch_d
        0x7 -> :sswitch_57
        0x6a -> :sswitch_8d
        0x6b -> :sswitch_2f2
        0x6c -> :sswitch_312
        0x3e9 -> :sswitch_2c1
        0x3ec -> :sswitch_219
        0x3ed -> :sswitch_1f4
        0x3ee -> :sswitch_252
        0x3f1 -> :sswitch_7d
        0x3f2 -> :sswitch_332
        0x3f3 -> :sswitch_37f
        0x3f4 -> :sswitch_3a7
        0x3f5 -> :sswitch_14e
        0x3f6 -> :sswitch_1c5
        0x3f7 -> :sswitch_67
    .end sparse-switch
.end method

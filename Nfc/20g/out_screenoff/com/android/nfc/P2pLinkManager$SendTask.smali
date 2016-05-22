.class Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .registers 2

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    .registers 10
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 775
    const/4 v2, 0x0

    .line 776
    .local v2, "response":Landroid/nfc/NdefMessage;
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 778
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 806
    :cond_d
    :goto_d
    return v4

    .line 782
    :cond_e
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 783
    .local v1, "request":Landroid/nfc/NdefMessage;
    if-eqz v1, :cond_36

    .line 784
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v6, :cond_22

    .line 785
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v6, v1}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 787
    :cond_22
    if-nez v2, :cond_32

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v6, :cond_32

    .line 791
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v6, v1}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    .line 792
    .local v3, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v3}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 794
    .end local v3    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_32
    if-nez v2, :cond_38

    move v4, v5

    .line 795
    goto :goto_d

    :cond_36
    move v4, v5

    .line 798
    goto :goto_d

    .line 801
    :cond_38
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 802
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6, v2}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v6

    .line 801
    invoke-virtual {v0, v5, v6, p1, p2}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v5

    .line 802
    if-eqz v5, :cond_d

    .line 806
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 14
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 823
    const/4 v2, 0x0

    .line 825
    .local v2, "result":Z
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v9

    .line 826
    :try_start_5
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_13

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v10, 0x4

    if-eq v8, v10, :cond_15

    .line 827
    :cond_13
    monitor-exit v9

    .line 905
    :goto_14
    return-object v11

    .line 829
    :cond_15
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v8, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 830
    .local v1, "m":Landroid/nfc/NdefMessage;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v8, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 831
    .local v6, "uris":[Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v8, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 832
    .local v7, "userHandle":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 833
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 834
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 825
    monitor-exit v9
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_a7

    .line 837
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 839
    .local v4, "time":J
    if-eqz v6, :cond_48

    .line 840
    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Trying handover request"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :try_start_41
    invoke-virtual {p0, v6, v7}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_b5

    move-result v0

    .line 843
    .local v0, "handoverResult":I
    packed-switch v0, :pswitch_data_ca

    .line 865
    .end local v0    # "handoverResult":I
    :cond_48
    :goto_48
    if-eqz v1, :cond_52

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v8, :cond_52

    .line 867
    :try_start_4e
    invoke-virtual {p0, v1, v7}, Lcom/android/nfc/P2pLinkManager$SendTask;->tryWPSHandover(Landroid/nfc/NdefMessage;Landroid/os/UserHandle;)Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_bf

    move-result v2

    .line 874
    :cond_52
    :goto_52
    if-nez v2, :cond_69

    if-eqz v1, :cond_69

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v8, :cond_69

    .line 875
    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Sending ndef via SNEP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :try_start_61
    invoke-virtual {p0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_c6

    move-result v3

    .line 878
    .local v3, "snepResult":I
    packed-switch v3, :pswitch_data_d6

    .line 886
    const/4 v2, 0x0

    .line 893
    .end local v3    # "snepResult":I
    :cond_69
    :goto_69
    if-nez v2, :cond_77

    if-eqz v1, :cond_77

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v8, :cond_77

    .line 894
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v8, v1}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v2

    .line 897
    :cond_77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v4

    .line 898
    const-string v8, "NfcP2pLinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SendTask result="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time ms="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-eqz v2, :cond_a2

    .line 900
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8, v1, v4, v5}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    .line 903
    :cond_a2
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->sendresultMessageforfinishBeamUI(Z)V

    goto/16 :goto_14

    .line 825
    .end local v1    # "m":Landroid/nfc/NdefMessage;
    .end local v4    # "time":J
    .end local v6    # "uris":[Landroid/net/Uri;
    .end local v7    # "userHandle":Landroid/os/UserHandle;
    :catchall_a7
    move-exception v8

    :try_start_a8
    monitor-exit v9
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v8

    .line 845
    .restart local v0    # "handoverResult":I
    .restart local v1    # "m":Landroid/nfc/NdefMessage;
    .restart local v4    # "time":J
    .restart local v6    # "uris":[Landroid/net/Uri;
    .restart local v7    # "userHandle":Landroid/os/UserHandle;
    :pswitch_aa
    const/4 v2, 0x1

    .line 846
    goto :goto_48

    .line 848
    :pswitch_ac
    const/4 v2, 0x0

    .line 849
    goto :goto_48

    .line 851
    :pswitch_ae
    const/4 v2, 0x0

    .line 852
    :try_start_af
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V

    goto :goto_48

    .line 860
    .end local v0    # "handoverResult":I
    :catch_b5
    move-exception v8

    const/4 v2, 0x0

    goto :goto_48

    .line 855
    .restart local v0    # "handoverResult":I
    :pswitch_b8
    const/4 v2, 0x0

    .line 856
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverBusy()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_be} :catch_b5

    goto :goto_48

    .line 869
    .end local v0    # "handoverResult":I
    :catch_bf
    move-exception v8

    const/4 v2, 0x0

    goto :goto_52

    .line 880
    .restart local v3    # "snepResult":I
    :pswitch_c2
    const/4 v2, 0x1

    .line 881
    goto :goto_69

    .line 883
    :pswitch_c4
    const/4 v2, 0x0

    .line 884
    goto :goto_69

    .line 889
    .end local v3    # "snepResult":I
    :catch_c6
    move-exception v8

    const/4 v2, 0x0

    goto :goto_69

    .line 843
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_ac
        :pswitch_ae
        :pswitch_b8
    .end packed-switch

    .line 878
    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_c4
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    if-eqz p1, :cond_9

    .line 811
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 812
    const/4 v0, 0x0

    .line 814
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method protected sendresultMessageforfinishBeamUI(Z)V
    .registers 2
    .param p1, "result"    # Z

    .prologue
    .line 909
    return-void
.end method

.method protected tryWPSHandover(Landroid/nfc/NdefMessage;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Trying WPShandover request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v0, 0x0

    return v0
.end method

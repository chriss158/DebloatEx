.class Lcom/android/nfc/P2pLinkManager$ConnectTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .registers 2

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/P2pLinkManager$ConnectTask;)Lcom/android/nfc/handover/HandoverClient;
    .registers 2

    .prologue
    new-instance v0, Lcom/android/nfc/handover/HandoverClient;

    .line 708
    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/P2pLinkManager$ConnectTask;Lcom/android/nfc/AP2pLinkManager;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/handover/HandoverClient;
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/nfc/P2pLinkManager$ConnectTask;
    .param p1, "ajc$aspectInstance"    # Lcom/android/nfc/AP2pLinkManager;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 31
    invoke-static {}, Lcom/android/nfc/AP2pLinkManager;->ajc$inlineAccessFieldGet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$DBG()Z

    move-result v0

    const-string v1, "AP2pLinkManager.aj"

    const-string v2, "around() :call(* HandoverClient.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/android/nfc/handover/LHandoverClient;

    invoke-static {p1}, Lcom/android/nfc/AP2pLinkManager;->ajc$inlineAccessFieldGet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$mHandoverDataParser(Lcom/android/nfc/AP2pLinkManager;)Lcom/android/nfc/handover/LHandoverDataParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/LHandoverClient;-><init>(Lcom/android/nfc/handover/LHandoverDataParser;)V

    return-object v0
.end method


# virtual methods
.method protected HandleDeActiveError()V
    .registers 1

    .prologue
    .line 681
    return-void
.end method

.method protected checkWPSHandover(ILandroid/nfc/NdefMessage;)Z
    .registers 4
    .param p1, "sendFlags"    # I
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, "needsHandover":Z
    const/4 v2, 0x0

    .line 687
    .local v2, "needsNdef":Z
    const/4 v5, 0x0

    .line 688
    .local v5, "success":Z
    const/4 v0, 0x0

    .line 689
    .local v0, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    const/4 v4, 0x0

    .line 690
    .local v4, "snepClient":Lcom/android/nfc/snep/SnepClient;
    const/4 v3, 0x0

    .line 692
    .local v3, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v7

    .line 695
    :try_start_9
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v6, :cond_1d

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v6, v6, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v6, v8}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->checkWPSHandover(ILandroid/nfc/NdefMessage;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 697
    :cond_1d
    const/4 v1, 0x1

    .line 700
    :cond_1e
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-eqz v6, :cond_25

    .line 701
    const/4 v2, 0x1

    .line 692
    :cond_25
    monitor-exit v7
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_6e

    .line 706
    if-eqz v1, :cond_35

    invoke-static {}, Lcom/android/nfc/AP2pLinkManager;->aspectOf()Lcom/android/nfc/AP2pLinkManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->init$_aroundBody1$advice(Lcom/android/nfc/P2pLinkManager$ConnectTask;Lcom/android/nfc/AP2pLinkManager;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/handover/HandoverClient;

    move-result-object v0

    .line 710
    :try_start_31
    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->connect()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_71

    .line 711
    const/4 v5, 0x1

    .line 717
    :cond_35
    :goto_35
    if-nez v2, :cond_3b

    if-eqz v1, :cond_4f

    if-nez v0, :cond_4f

    .line 718
    :cond_3b
    new-instance v4, Lcom/android/nfc/snep/SnepClient;

    .end local v4    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    invoke-direct {v4}, Lcom/android/nfc/snep/SnepClient;-><init>()V

    .line 720
    .restart local v4    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :try_start_40
    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_74

    .line 721
    const/4 v5, 0x1

    .line 726
    :goto_44
    if-nez v5, :cond_4f

    .line 727
    new-instance v3, Lcom/android/nfc/ndefpush/NdefPushClient;

    .end local v3    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    invoke-direct {v3}, Lcom/android/nfc/ndefpush/NdefPushClient;-><init>()V

    .line 729
    .restart local v3    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :try_start_4b
    invoke-virtual {v3}, Lcom/android/nfc/ndefpush/NdefPushClient;->connect()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_77

    .line 730
    const/4 v5, 0x1

    .line 737
    :cond_4f
    :goto_4f
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v7

    .line 738
    :try_start_52
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 740
    if-eqz v0, :cond_5d

    .line 741
    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 743
    :cond_5d
    if-eqz v4, :cond_62

    .line 744
    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 746
    :cond_62
    if-eqz v3, :cond_67

    .line 747
    invoke-virtual {v3}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 749
    :cond_67
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_8c

    .line 757
    :goto_6d
    return-object v6

    .line 692
    :catchall_6e
    move-exception v6

    :try_start_6f
    monitor-exit v7
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v6

    .line 713
    :catch_71
    move-exception v6

    const/4 v0, 0x0

    goto :goto_35

    .line 723
    :catch_74
    move-exception v6

    const/4 v4, 0x0

    goto :goto_44

    .line 732
    :catch_77
    move-exception v6

    const/4 v3, 0x0

    goto :goto_4f

    .line 754
    :cond_7a
    :try_start_7a
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v0, v6, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 755
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v4, v6, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 756
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v3, v6, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 757
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    monitor-exit v7

    goto :goto_6d

    .line 737
    :catchall_8c
    move-exception v6

    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_7a .. :try_end_8e} :catchall_8c

    throw v6
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 667
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "ConnectTask was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_d
    return-void

    .line 670
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 671
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    goto :goto_d

    .line 673
    :cond_1a
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Could not connect required NFC transports"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->HandleDeActiveError()V

    goto :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.class Lcom/android/nfc/LP2pLinkManager$LConnectTask;
.super Lcom/android/nfc/P2pLinkManager$ConnectTask;
.source "LP2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LP2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LConnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LP2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/LP2pLinkManager;)V
    .registers 2

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    return-void
.end method


# virtual methods
.method protected HandleDeActiveError()V
    .registers 3

    .prologue
    .line 350
    const-string v0, "LP2pLinkManager"

    const-string v1, "Handling DeActiveError!!!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v0, v0, Lcom/android/nfc/LP2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    return-void
.end method

.method protected checkWPSHandover(ILandroid/nfc/NdefMessage;)Z
    .registers 4
    .param p1, "sendFlags"    # I
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v0, v0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    if-eqz v0, :cond_e

    .line 341
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget v0, v0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_10

    .line 342
    :cond_e
    const/4 v0, 0x0

    .line 344
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v0, v0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-virtual {v0, p2}, Lcom/android/nfc/handover/LHandoverDataParser;->checkWPSHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    goto :goto_f
.end method

.method protected newHandoverClient()Lcom/android/nfc/handover/HandoverClient;
    .registers 3

    .prologue
    .line 335
    new-instance v0, Lcom/android/nfc/handover/LHandoverClient;

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/LP2pLinkManager;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/LHandoverClient;-><init>(Lcom/android/nfc/handover/LHandoverDataParser;)V

    return-object v0
.end method

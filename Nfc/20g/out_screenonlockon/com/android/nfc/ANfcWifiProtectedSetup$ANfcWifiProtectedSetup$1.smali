.class Lcom/android/nfc/ANfcWifiProtectedSetup$ANfcWifiProtectedSetup$1;
.super Ljava/lang/Object;
.source "ANfcWifiProtectedSetup.aj"

# interfaces
.implements Lcom/android/nfc/handover/LHandoverPopupList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ANfcWifiProtectedSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ANfcWifiProtectedSetup;


# direct methods
.method constructor <init>(Lcom/android/nfc/ANfcWifiProtectedSetup;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ANfcWifiProtectedSetup$ANfcWifiProtectedSetup$1;->this$0:Lcom/android/nfc/ANfcWifiProtectedSetup;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandoverPopupCallback(IZLandroid/os/Parcelable;)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "isResult"    # Z
    .param p3, "msg"    # Landroid/os/Parcelable;

    .prologue
    .line 83
    if-nez p2, :cond_3

    .line 89
    :goto_2
    return-void

    :cond_3
    move-object v0, p3

    .line 86
    check-cast v0, Landroid/content/Intent;

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/nfc/ANfcWifiProtectedSetup;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->access$0()Z

    move-result v1

    const-string v2, "ANfcWifiProtectedSetup.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onHandoverPopupCallback : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/nfc/ANfcWifiProtectedSetup$ANfcWifiProtectedSetup$1;->this$0:Lcom/android/nfc/ANfcWifiProtectedSetup;

    iget-object v1, v1, Lcom/android/nfc/ANfcWifiProtectedSetup;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2
.end method

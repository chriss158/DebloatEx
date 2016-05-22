.class Lcom/android/nfc/LNfcPopupList$2;
.super Landroid/content/BroadcastReceiver;
.source "LNfcPopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcPopupList;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcPopupList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/LNfcPopupList$2;->this$0:Lcom/android/nfc/LNfcPopupList;

    .line 138
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 141
    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    .line 160
    :cond_5
    :goto_5
    return-void

    .line 144
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v3, "LNfcPopupList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">> action :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "com.lge.nfc.action.NFC_ANTENNA_POPUP_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    const-string v3, "com.lge.nfc.extra.popup_checkbox"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 150
    .local v2, "isCheckBox":Z
    const-string v3, "cancel"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 152
    .local v1, "isCancel":Z
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList$2;->this$0:Lcom/android/nfc/LNfcPopupList;

    # getter for: Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/LNfcPopupList;->access$0(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 153
    if-nez v1, :cond_47

    .line 154
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList$2;->this$0:Lcom/android/nfc/LNfcPopupList;

    # getter for: Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/LNfcPopupList;->access$0(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "antennapopup"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    :cond_47
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList$2;->this$0:Lcom/android/nfc/LNfcPopupList;

    # getter for: Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/LNfcPopupList;->access$0(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "antennadefaultcheck"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList$2;->this$0:Lcom/android/nfc/LNfcPopupList;

    # getter for: Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/LNfcPopupList;->access$0(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5
.end method

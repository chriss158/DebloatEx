.class Lcom/android/nfc/handover/LHandoverPopupList$1;
.super Landroid/content/BroadcastReceiver;
.source "LHandoverPopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LHandoverPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/LHandoverPopupList;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/LHandoverPopupList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    .line 159
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "action":Ljava/lang/String;
    const-string v5, "LHandoverPopupList"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "action : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$0(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->unregisterIntentFilter()V

    .line 165
    const-string v5, "com.lge.nfc.bluetoothheadset_popup_positive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 166
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v4

    .line 167
    .local v4, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    const-string v5, "com.lge.nfc.extra.popup_checkbox"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 169
    .local v1, "ischeckbox":Z
    if-eqz v4, :cond_43

    .line 170
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 171
    const/16 v5, 0x65

    invoke-virtual {v4, v5, v9}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 173
    :cond_43
    if-eqz v1, :cond_51

    .line 174
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 175
    .local v2, "msg":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # invokes: Lcom/android/nfc/handover/LHandoverPopupList;->makeConfirmPopupDialogIntent(Landroid/os/Parcelable;)V
    invoke-static {v5, v2}, Lcom/android/nfc/handover/LHandoverPopupList;->access$1(Lcom/android/nfc/handover/LHandoverPopupList;Landroid/os/Parcelable;)V

    .line 204
    .end local v1    # "ischeckbox":Z
    .end local v2    # "msg":Landroid/os/Parcelable;
    .end local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_50
    :goto_50
    return-void

    .line 177
    .restart local v1    # "ischeckbox":Z
    .restart local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_51
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$2(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 178
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 179
    .local v3, "msgs":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$2(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    invoke-interface {v5, v8, v9, v3}, Lcom/android/nfc/handover/LHandoverPopupList$Callback;->onHandoverPopupCallback(IZLandroid/os/Parcelable;)V

    goto :goto_50

    .line 183
    .end local v1    # "ischeckbox":Z
    .end local v3    # "msgs":Landroid/os/Parcelable;
    .end local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_69
    const-string v5, "com.lge.nfc.bluetoothheadset_popup_negative"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 184
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$2(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 185
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 186
    .restart local v2    # "msg":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$2(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    invoke-interface {v5, v8, v8, v2}, Lcom/android/nfc/handover/LHandoverPopupList$Callback;->onHandoverPopupCallback(IZLandroid/os/Parcelable;)V

    goto :goto_50

    .line 188
    .end local v2    # "msg":Landroid/os/Parcelable;
    :cond_89
    const-string v5, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    .line 189
    const-string v5, "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 190
    :cond_99
    const-string v5, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 191
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v4

    .line 192
    .restart local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v4, :cond_b5

    .line 193
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    move-result v5

    if-nez v5, :cond_b5

    .line 194
    const-string v5, "LHandoverPopupList"

    const-string v6, "Invalid Sequence : default checkbox is NOT saved"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v4    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_b5
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$2(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 200
    const-string v5, "callback"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 201
    .restart local v2    # "msg":Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList$1;->this$0:Lcom/android/nfc/handover/LHandoverPopupList;

    # getter for: Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverPopupList;->access$2(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v5

    invoke-interface {v5, v8, v9, v2}, Lcom/android/nfc/handover/LHandoverPopupList$Callback;->onHandoverPopupCallback(IZLandroid/os/Parcelable;)V

    goto :goto_50
.end method

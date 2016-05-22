.class Lcom/android/nfc/LNfcDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "LNfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcDispatcher;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcDispatcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    .line 428
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 431
    if-nez p2, :cond_10

    .line 432
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent object is null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_f
    :goto_f
    return-void

    .line 435
    :cond_10
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    # getter for: Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/nfc/LNfcDispatcher;->access$1(Lcom/android/nfc/LNfcDispatcher;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    const-string v3, "com.lge.nfc.intent.extra.send_intent"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 439
    .local v0, "innerIntent":Landroid/content/Intent;
    if-nez v0, :cond_31

    .line 440
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid Sequence : innerIntent is null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 443
    :cond_31
    const-string v3, "com.lge.nfc.action.vzw_popup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 444
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 446
    .local v2, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v2, :cond_4f

    .line 447
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 448
    const/16 v3, 0x64

    invoke-virtual {v2, v3, v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    .line 451
    :cond_4f
    const-string v3, "com.lge.nfc.extra.popup_checkbox"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 452
    .local v1, "ischeckbox":Z
    if-eqz v1, :cond_63

    .line 453
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    const v4, 0x7f080038

    const v5, 0x7f080037

    # invokes: Lcom/android/nfc/LNfcDispatcher;->makeConfirmPopupDialogIntent(Landroid/content/Intent;II)V
    invoke-static {v3, v0, v4, v5}, Lcom/android/nfc/LNfcDispatcher;->access$2(Lcom/android/nfc/LNfcDispatcher;Landroid/content/Intent;II)V

    goto :goto_f

    .line 455
    :cond_63
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 456
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_f

    .line 458
    .end local v1    # "ischeckbox":Z
    .end local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_70
    const-string v3, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 459
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 460
    .restart local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    const-string v3, "com.lge.nfc.extra.popup_checkbox"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 462
    .restart local v1    # "ischeckbox":Z
    if-eqz v2, :cond_99

    if-eqz v1, :cond_99

    .line 463
    invoke-virtual {v2, v6, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    move-result v3

    if-nez v3, :cond_99

    .line 464
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid Sequence : default checkbox is NOT saved"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_99
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 468
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_f

    .line 470
    .end local v1    # "ischeckbox":Z
    .end local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_a7
    const-string v3, "com.lge.nfc.action.confirmpopup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    .line 471
    const-string v3, "com.lge.nfc.action.emptypopup_positive_result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 473
    :cond_bf
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 474
    .restart local v2    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v2, :cond_d4

    .line 475
    invoke-virtual {v2, v6, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 476
    # getter for: Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcDispatcher;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid Sequence : default checkbox is NOT saved"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_d4
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher$1;->this$0:Lcom/android/nfc/LNfcDispatcher;

    iget-object v3, v3, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_f
.end method

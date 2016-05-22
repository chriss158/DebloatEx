.class public Lcom/android/nfc/LNfcService$PackageCheckHandler;
.super Landroid/os/Handler;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PackageCheckHandler"
.end annotation


# static fields
.field private static final CTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.cts.verifier"

.field public static final MSG_CHECK_CTS_VERIFIER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 2747
    iput-object p1, p0, Lcom/android/nfc/LNfcService$PackageCheckHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private checkCtsVerifier(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2762
    const/4 v0, 0x0

    .line 2772
    .local v0, "installCtsApp":Z
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v2, :cond_8

    .line 2792
    :cond_7
    :goto_7
    return-void

    .line 2776
    :cond_8
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2780
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2781
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "com.android.cts.verifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2785
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2786
    monitor-enter p0

    .line 2787
    :try_start_2b
    iget-object v2, p0, Lcom/android/nfc/LNfcService$PackageCheckHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    if-eqz v2, :cond_54

    .line 2788
    sget-boolean v2, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Install / Uninstall CtsVerifier("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2789
    iget-object v2, p0, Lcom/android/nfc/LNfcService$PackageCheckHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setInstallCtsVerifier(Z)V

    .line 2786
    :cond_54
    monitor-exit p0

    goto :goto_7

    :catchall_56
    move-exception v2

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_56

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2752
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 2759
    :goto_5
    return-void

    .line 2754
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    :goto_10
    invoke-direct {p0, v0}, Lcom/android/nfc/LNfcService$PackageCheckHandler;->checkCtsVerifier(Landroid/content/Intent;)V

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    goto :goto_10

    .line 2752
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

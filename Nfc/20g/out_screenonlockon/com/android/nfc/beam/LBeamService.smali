.class Lcom/android/nfc/beam/LBeamService;
.super Ljava/lang/Object;
.source "LBeamService.java"


# static fields
.field public static final ACTION_INIT:Ljava/lang/String; = "com.android.nfc.beam.ACTION_INIT"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initService(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->initialNotification(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method static sendInitIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    if-eqz p1, :cond_12

    .line 18
    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 19
    const-string v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 20
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.beam.ACTION_INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 22
    :cond_1e
    return-void
.end method

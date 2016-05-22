.class Lcom/android/nfc/beam/LBeamManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LBeamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/LBeamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/LBeamManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/LBeamManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/beam/LBeamManager$1;->this$0:Lcom/android/nfc/beam/LBeamManager;

    .line 132
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 146
    :cond_4
    :goto_4
    return-void

    .line 141
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/nfc/beam/LBeamManager;->DBG:Z
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->access$1()Z

    move-result v1

    const-string v2, "LBeamManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "com.android.nfc.beam.ACTION_INIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/android/nfc/beam/LBeamManager$1;->this$0:Lcom/android/nfc/beam/LBeamManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/beam/LBeamManager;->mBeamInProgress:Z

    goto :goto_4
.end method

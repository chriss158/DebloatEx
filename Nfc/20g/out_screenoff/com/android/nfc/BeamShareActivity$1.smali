.class Lcom/android/nfc/BeamShareActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BeamShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/BeamShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$1;->this$0:Lcom/android/nfc/BeamShareActivity;

    .line 232
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 236
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 237
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    .line 238
    const/4 v2, 0x1

    .line 237
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 240
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$1;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$1;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v2, v2, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    .line 243
    .end local v0    # "state":I
    :cond_22
    return-void
.end method

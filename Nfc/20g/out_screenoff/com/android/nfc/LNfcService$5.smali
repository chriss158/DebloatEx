.class Lcom/android/nfc/LNfcService$5;
.super Landroid/content/BroadcastReceiver;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    .line 2603
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mBroadcastHandler:Lcom/android/nfc/LNfcService$BroadcastHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/nfc/LNfcService$BroadcastHandler;->sendMessage(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 2611
    return-void
.end method

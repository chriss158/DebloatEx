.class public Lcom/android/nfc/LNfcService$BroadcastHandler;
.super Landroid/os/Handler;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BroadcastHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;
    }
.end annotation


# static fields
.field public static final MSG_LG_NFC_OWNER_RECEIVER:I = 0x4

.field public static final MSG_LG_NFC_RECEIVER:I = 0x1

.field public static final MSG_LG_NFC_SIM_RECEIVER:I = 0x5

.field public static final MSG_LG_NFC_TEST_RECEIVER:I = 0x3

.field public static final MSG_LG_NFC_UI_RECEIVER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 2499
    iput-object p1, p0, Lcom/android/nfc/LNfcService$BroadcastHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2518
    if-nez p1, :cond_3

    .line 2549
    :cond_2
    :goto_2
    return-void

    .line 2522
    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;

    if-eqz v3, :cond_20

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;

    move-object v1, v3

    .line 2523
    .local v1, "handlerObject":Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;
    :goto_e
    if-eqz v1, :cond_2

    .line 2527
    iget-object v0, v1, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;->mContext:Landroid/content/Context;

    .line 2528
    .local v0, "context":Landroid/content/Context;
    iget-object v2, v1, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;->mIntent:Landroid/content/Intent;

    .line 2530
    .local v2, "intent":Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_3a

    goto :goto_2

    .line 2532
    :pswitch_1a
    iget-object v3, p0, Lcom/android/nfc/LNfcService$BroadcastHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3, v0, v2}, Lcom/android/nfc/LNfcService;->onReceiveLgNfcReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 2522
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "handlerObject":Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_20
    const/4 v1, 0x0

    goto :goto_e

    .line 2535
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "handlerObject":Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;
    .restart local v2    # "intent":Landroid/content/Intent;
    :pswitch_22
    iget-object v3, p0, Lcom/android/nfc/LNfcService$BroadcastHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3, v0, v2}, Lcom/android/nfc/LNfcService;->onReceiveLgNfcUIReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 2538
    :pswitch_28
    iget-object v3, p0, Lcom/android/nfc/LNfcService$BroadcastHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3, v0, v2}, Lcom/android/nfc/LNfcService;->onReceiveLgNfcTestReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 2541
    :pswitch_2e
    iget-object v3, p0, Lcom/android/nfc/LNfcService$BroadcastHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3, v0, v2}, Lcom/android/nfc/LNfcService;->onReceiveLgNfcOwnerReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 2544
    :pswitch_34
    iget-object v3, p0, Lcom/android/nfc/LNfcService$BroadcastHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3, v0, v2}, Lcom/android/nfc/LNfcService;->onReceiveLgNfcSIMReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 2530
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method

.method public sendMessage(ILandroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2552
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2553
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2554
    new-instance v1, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;-><init>(Lcom/android/nfc/LNfcService$BroadcastHandler;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2555
    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2556
    return-void
.end method

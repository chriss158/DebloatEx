.class public Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;
.super Ljava/lang/Object;
.source "ABeamShareActivity.aj"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ABeamShareActivity;->ajc$around$com_android_nfc_ABeamShareActivity$2$84f07eb8(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ABeamShareActivity;

.field private final synthetic val$activity:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method public constructor <init>(Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;->this$0:Lcom/android/nfc/ABeamShareActivity;

    iput-object p2, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;->val$activity:Lcom/android/nfc/BeamShareActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;->val$activity:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 59
    iget-object v0, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;->val$activity:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 64
    :goto_11
    return-void

    .line 62
    :cond_12
    iget-object v0, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;->val$activity:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;->val$activity:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_11
.end method

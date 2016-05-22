.class public Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;
.super Ljava/lang/Object;
.source "ABeamShareActivity.aj"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ABeamShareActivity;->ajc$around$com_android_nfc_ABeamShareActivity$3$370fc7fc(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
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
    iput-object p1, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;->this$0:Lcom/android/nfc/ABeamShareActivity;

    iput-object p2, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;->val$activity:Lcom/android/nfc/BeamShareActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;->val$activity:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 79
    return-void
.end method

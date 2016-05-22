.class public Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;
.super Ljava/lang/Object;
.source "LCardEmulationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoutePowerState"
.end annotation


# instance fields
.field public mOffHostRoute:I

.field public mOffhostroutePowerState:I

.field public mOnhostroutePowerState:I

.field public mProtocolMask:I

.field public mTechOffHostMask:I

.field public mTechOnHostMask:I

.field final synthetic this$0:Lcom/android/nfc/cardemulation/LCardEmulationConfig;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationConfig;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

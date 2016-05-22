.class Lcom/android/nfc/ScreenStateHelper;
.super Ljava/lang/Object;
.source "ScreenStateHelper.java"


# static fields
.field static final DEVICE_POWER_STATE_OFF:I = 0x7

.field static final DEVICE_POWER_STATE_ON:I = 0x6

.field static final SCREEN_STATE_OFF:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field static final SCREEN_STATE_UNKNOWN:I


# instance fields
.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 30
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 31
    return-void
.end method

.method static screenStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "screenState"    # I

    .prologue
    .line 48
    packed-switch p0, :pswitch_data_10

    .line 56
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 50
    :pswitch_6
    const-string v0, "OFF"

    goto :goto_5

    .line 52
    :pswitch_9
    const-string v0, "ON_LOCKED"

    goto :goto_5

    .line 54
    :pswitch_c
    const-string v0, "ON_UNLOCKED"

    goto :goto_5

    .line 48
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method checkScreenState()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_a

    .line 36
    const/4 v0, 0x1

    .line 40
    :goto_9
    return v0

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38
    const/4 v0, 0x3

    goto :goto_9

    .line 40
    :cond_14
    const/4 v0, 0x3

    goto :goto_9
.end method

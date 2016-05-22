.class public Lcom/android/nfc/ABeamShareActivity;
.super Ljava/lang/Object;
.source "ABeamShareActivity.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ABeamShareActivity.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/ABeamShareActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ABeamShareActivity;->DBG:Z

    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/ABeamShareActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_ABeamShareActivity$1$aefe4de1proceed(Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 6
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_ABeamShareActivity$2$84f07eb8proceed(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 5
    .param p0, "this"    # Lcom/android/nfc/BeamShareActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_ABeamShareActivity$3$370fc7fcproceed(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 5
    .param p0, "this"    # Lcom/android/nfc/BeamShareActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_ABeamShareActivity$4$89fe7970proceed(Lcom/android/nfc/BeamShareActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/android/nfc/BeamShareActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/ABeamShareActivity;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ABeamShareActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/ABeamShareActivity;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/ABeamShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/ABeamShareActivity;

    invoke-direct {v0}, Lcom/android/nfc/ABeamShareActivity;-><init>()V

    sput-object v0, Lcom/android/nfc/ABeamShareActivity;->ajc$perSingletonInstance:Lcom/android/nfc/ABeamShareActivity;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/ABeamShareActivity;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ABeamShareActivity;->ajc$perSingletonInstance:Lcom/android/nfc/ABeamShareActivity;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_ABeamShareActivity"

    sget-object v2, Lcom/android/nfc/ABeamShareActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/ABeamShareActivity;->ajc$perSingletonInstance:Lcom/android/nfc/ABeamShareActivity;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ABeamShareActivity;->ajc$perSingletonInstance:Lcom/android/nfc/ABeamShareActivity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_ABeamShareActivity$1$aefe4de1(Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "context,resId,ajc$aroundClosure"
        value = "newAlertDialog_dialogBuilder(context, resId)"
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG()Z

    move-result v1

    const-string v2, "ABeamShareActivity.aj"

    const-string v3, "around() : call(AlertDialog.Builder(..))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 44
    sget v1, Lcom/lge/internal/R$style;->Theme_LGE_Default_Dialog_Alert:I

    .line 43
    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 47
    return-object v0
.end method

.method public ajc$around$com_android_nfc_ABeamShareActivity$2$84f07eb8(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 8
    .param p1, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "activity,builder,ajc$aroundClosure"
        value = "dialogBuilder_setPositiveButton(activity, builder)"
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG()Z

    move-result v1

    const-string v2, "ABeamShareActivity.aj"

    const-string v3, "around() : call(AlertDialog.Builder.setPositiveButton(int, DialogInterface.OnClickListener))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;-><init>(Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;)V

    .line 67
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    const v1, 0x7f080017

    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1
.end method

.method public ajc$around$com_android_nfc_ABeamShareActivity$3$370fc7fc(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 8
    .param p1, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "activity,builder,ajc$aroundClosure"
        value = "dialogBuilder_setNegativeButton(activity, builder)"
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG()Z

    move-result v1

    const-string v2, "ABeamShareActivity.aj"

    const-string v3, "around() : call(AlertDialog.Builder.setNegativeButton(int, DialogInterface.OnClickListener))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;-><init>(Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;)V

    .line 82
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    const v1, 0x7f080018

    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1
.end method

.method public ajc$around$com_android_nfc_ABeamShareActivity$4$89fe7970(Lcom/android/nfc/BeamShareActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "activity,ajc$aroundClosure"
        value = "(execution(void BeamShareActivity.parseShareIntentAndFinish(..)) && this(activity))"
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/nfc/ABeamShareActivity;->ajc$around$com_android_nfc_ABeamShareActivity$4$89fe7970proceed(Lcom/android/nfc/BeamShareActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 93
    :goto_3
    return-void

    .line 88
    :catch_4
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG()Z

    move-result v1

    const-string v2, "ABeamShareActivity.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "throwing exception e : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 90
    const v1, 0x7f080052

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p1}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto :goto_3
.end method

.method public synthetic ajc$pointcut$$dialogBuilder_setNegativeButton$486(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "activity,builder"
        value = "(this(activity) && (target(builder) && call(* android.app.AlertDialog$Builder.setNegativeButton(..))))"
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public synthetic ajc$pointcut$$dialogBuilder_setPositiveButton$399(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "activity,builder"
        value = "(this(activity) && (target(builder) && call(* android.app.AlertDialog$Builder.setPositiveButton(..))))"
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public synthetic ajc$pointcut$$newAlertDialog_dialogBuilder$2c3(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "context,resId"
        value = "(within(com.android.nfc.BeamShareActivity) && (call(android.app.AlertDialog$Builder.new(android.content.Context, int)) && args(context, resId)))"
    .end annotation

    .prologue
    .line 26
    return-void
.end method

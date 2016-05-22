.class public Lcom/android/nfc/beam/AMimeTypeUtil;
.super Ljava/lang/Object;
.source "AMimeTypeUtil.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AMimeTypeUtil.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/beam/AMimeTypeUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/AMimeTypeUtil;->DBG:Z

    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_beam_AMimeTypeUtil$1$fdc6d6bfproceed(Landroid/content/Context;Landroid/net/Uri;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 5
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/beam/AMimeTypeUtil;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/AMimeTypeUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/beam/AMimeTypeUtil;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/beam/AMimeTypeUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/beam/AMimeTypeUtil;

    invoke-direct {v0}, Lcom/android/nfc/beam/AMimeTypeUtil;-><init>()V

    sput-object v0, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$perSingletonInstance:Lcom/android/nfc/beam/AMimeTypeUtil;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/beam/AMimeTypeUtil;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$perSingletonInstance:Lcom/android/nfc/beam/AMimeTypeUtil;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_beam_AMimeTypeUtil"

    sget-object v2, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$perSingletonInstance:Lcom/android/nfc/beam/AMimeTypeUtil;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$perSingletonInstance:Lcom/android/nfc/beam/AMimeTypeUtil;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_beam_AMimeTypeUtil$1$fdc6d6bf(Landroid/content/Context;Landroid/net/Uri;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "context,uri,ajc$aroundClosure"
        value = "getMimeTypeForUri(context, uri)"
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v7

    const-string v8, "AMimeTypeUtil.aj"

    const-string v9, "around() - execution(* MimeTypeUtil.getMimeTypeForUri(..))"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v7

    const-string v8, "AMimeTypeUtil.aj"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ">>> uri.getScheme() :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v7

    const-string v8, "AMimeTypeUtil.aj"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ">>> uri.getPath() :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4b

    .line 73
    :cond_4a
    :goto_4a
    return-object v6

    .line 34
    :cond_4b
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 36
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4a

    .line 37
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_60
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 38
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "UriPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "extension":Ljava/lang/String;
    if-eqz v2, :cond_4a

    .line 48
    const/4 v5, 0x0

    .line 49
    .local v5, "subUriPath":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 50
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "subExtension":Ljava/lang/String;
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4a

    .line 58
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "subMimeType":Ljava/lang/String;
    const-string v6, "com.lge.nfc.sendbroadcastenable"

    invoke-static {p1, v6}, Lcom/android/nfc/LNfcCommon;->isApplicationFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lge_ext/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4a

    .line 52
    .end local v3    # "subExtension":Ljava/lang/String;
    .end local v4    # "subMimeType":Ljava/lang/String;
    :cond_bd
    const-string v6, "lge/etc"

    goto :goto_4a

    .line 61
    .restart local v3    # "subExtension":Ljava/lang/String;
    .restart local v4    # "subMimeType":Ljava/lang/String;
    :cond_c0
    if-eqz v4, :cond_d2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d2

    .line 62
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4a

    .line 64
    :cond_d2
    const-string v6, "lge/etc"

    goto/16 :goto_4a

    .line 72
    .end local v0    # "UriPath":Ljava/lang/String;
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "subExtension":Ljava/lang/String;
    .end local v4    # "subMimeType":Ljava/lang/String;
    .end local v5    # "subUriPath":Ljava/lang/String;
    :cond_d6
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v7

    const-string v8, "AMimeTypeUtil.aj"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not determine mime type for Uri "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4a
.end method

.method public synthetic ajc$pointcut$$getMimeTypeForUri$2c5(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "context,uri"
        value = "(execution(* com.android.nfc.beam.MimeTypeUtil.getMimeTypeForUri(android.content.Context, android.net.Uri)) && args(context, uri))"
    .end annotation

    .prologue
    .line 24
    return-void
.end method

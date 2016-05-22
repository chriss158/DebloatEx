.class public final Lcom/android/nfc/beam/MimeTypeUtil;
.super Ljava/lang/Object;
.source "MimeTypeUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MimeTypeUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->aspectOf()Lcom/android/nfc/beam/AMimeTypeUtil;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri_aroundBody1$advice(Landroid/content/Context;Landroid/net/Uri;Lcom/android/nfc/beam/AMimeTypeUtil;Landroid/content/Context;Landroid/net/Uri;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getMimeTypeForUri_aroundBody0(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 47
    :cond_7
    :goto_7
    return-object v2

    .line 35
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 37
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 38
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1d
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 41
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 46
    .end local v1    # "extension":Ljava/lang/String;
    :cond_40
    const-string v3, "MimeTypeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not determine mime type for Uri "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private static final getMimeTypeForUri_aroundBody1$advice(Landroid/content/Context;Landroid/net/Uri;Lcom/android/nfc/beam/AMimeTypeUtil;Landroid/content/Context;Landroid/net/Uri;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 22

    .prologue
    .line 27
    move-object/from16 v10, p0

    .local v10, "context":Landroid/content/Context;
    move-object/from16 v11, p1

    .local v11, "uri":Landroid/net/Uri;
    move-object/from16 v12, p2

    .local v12, "ajc$aspectInstance":Lcom/android/nfc/beam/AMimeTypeUtil;
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v15, p5

    .local v15, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v6

    const-string v7, "AMimeTypeUtil.aj"

    const-string v8, "around() - execution(* MimeTypeUtil.getMimeTypeForUri(..))"

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v6

    const-string v7, "AMimeTypeUtil.aj"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ">>> uri.getScheme() :: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v6

    const-string v7, "AMimeTypeUtil.aj"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ">>> uri.getPath() :: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_57

    .line 31
    const/4 v6, 0x0

    .line 73
    :goto_56
    return-object v6

    .line 34
    :cond_57
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 35
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 36
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v1, v11}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    goto :goto_56

    .line 37
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_6c
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 38
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "UriPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "extension":Ljava/lang/String;
    if-nez v2, :cond_88

    .line 43
    const/4 v6, 0x0

    goto :goto_56

    .line 48
    :cond_88
    const/4 v5, 0x0

    .line 49
    .local v5, "subUriPath":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 50
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "subExtension":Ljava/lang/String;
    if-eqz v3, :cond_e4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e4

    .line 58
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "subMimeType":Ljava/lang/String;
    const-string v6, "com.lge.nfc.sendbroadcastenable"

    invoke-static {v10, v6}, Lcom/android/nfc/LNfcCommon;->isApplicationFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lge_ext/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_56

    .line 52
    .end local v3    # "subExtension":Ljava/lang/String;
    .end local v4    # "subMimeType":Ljava/lang/String;
    :cond_cb
    const-string v6, "lge/etc"

    goto :goto_56

    .line 61
    .restart local v3    # "subExtension":Ljava/lang/String;
    .restart local v4    # "subMimeType":Ljava/lang/String;
    :cond_ce
    if-eqz v4, :cond_e0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e0

    .line 62
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_56

    .line 64
    :cond_e0
    const-string v6, "lge/etc"

    goto/16 :goto_56

    .line 69
    .end local v4    # "subMimeType":Ljava/lang/String;
    :cond_e4
    const/4 v6, 0x0

    goto/16 :goto_56

    .line 72
    .end local v0    # "UriPath":Ljava/lang/String;
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "subExtension":Ljava/lang/String;
    .end local v5    # "subUriPath":Ljava/lang/String;
    :cond_e7
    invoke-static {}, Lcom/android/nfc/beam/AMimeTypeUtil;->ajc$inlineAccessFieldGet$com_android_nfc_beam_AMimeTypeUtil$com_android_nfc_beam_AMimeTypeUtil$DBG()Z

    move-result v6

    const-string v7, "AMimeTypeUtil.aj"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not determine mime type for Uri "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v6, 0x0

    goto/16 :goto_56
.end method

.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    new-instance v0, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/BeamShareActivity;Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .registers 4

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-direct {v0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Context;ILcom/android/nfc/ABeamShareActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 18

    .prologue
    .line 41
    move-object v4, p0

    .local v4, "ajc$this":Lcom/android/nfc/BeamShareActivity;
    move-object v5, p1

    .local v5, "context":Landroid/content/Context;
    move v6, p2

    .local v6, "themeResId":I
    move-object v7, p3

    .local v7, "ajc$aspectInstance":Lcom/android/nfc/ABeamShareActivity;
    move-object v5, p4

    move/from16 v9, p5

    .local v9, "resId":I
    move-object/from16 v10, p6

    .local v10, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
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
    invoke-direct {v0, v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 47
    return-object v0
.end method

.method private static final parseShareIntentAndFinish_aroundBody6(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;)V
    .registers 22
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    if-eqz p1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    const-string v17, "android.intent.action.SEND"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1b

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    const-string v17, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1b

    .line 230
    :cond_1a
    :goto_1a
    return-void

    .line 146
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 147
    .local v3, "clipData":Landroid/content/ClipData;
    if-eqz v3, :cond_cc

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v16

    if-lez v16, :cond_cc

    .line 148
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v16

    move/from16 v0, v16

    if-lt v4, v0, :cond_85

    .line 197
    .end local v4    # "i":I
    :cond_30
    :goto_30
    const/4 v10, 0x0

    .line 198
    .local v10, "shareData":Landroid/nfc/BeamShareData;
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 199
    .local v6, "myUserHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1ef

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [Landroid/net/Uri;

    .line 202
    .local v14, "uriArray":[Landroid/net/Uri;
    const/4 v7, 0x0

    .line 203
    .local v7, "numValidUris":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_61
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_19d

    .line 214
    :goto_67
    if-lez v7, :cond_1dc

    .line 215
    new-instance v10, Landroid/nfc/BeamShareData;

    .end local v10    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v10, v0, v14, v6, v1}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 228
    .end local v7    # "numValidUris":I
    .end local v14    # "uriArray":[Landroid/net/Uri;
    .restart local v10    # "shareData":Landroid/nfc/BeamShareData;
    :cond_76
    :goto_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/nfc/NfcAdapter;->invokeBeam(Landroid/nfc/BeamShareData;)Z

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto :goto_1a

    .line 149
    .end local v6    # "myUserHandle":Landroid/os/UserHandle;
    .end local v10    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v4    # "i":I
    :cond_85
    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 151
    .local v5, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v13

    .line 152
    .local v13, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, "plainText":Ljava/lang/String;
    if-eqz v13, :cond_ad

    .line 154
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_a4

    const-string v16, "BeamShareActivity"

    const-string v17, "Found uri in ClipData."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_a4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 148
    :cond_a9
    :goto_a9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_28

    .line 156
    :cond_ad
    if-eqz v9, :cond_c0

    .line 157
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_ba

    const-string v16, "BeamShareActivity"

    const-string v17, "Found text in ClipData."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_a9

    .line 160
    :cond_c0
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_a9

    const-string v16, "BeamShareActivity"

    const-string v17, "Did not find any shareable data in ClipData."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 164
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/content/ClipData$Item;
    .end local v9    # "plainText":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_cc
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    const-string v17, "android.intent.action.SEND"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_129

    .line 165
    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 166
    .restart local v13    # "uri":Landroid/net/Uri;
    const-string v16, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 167
    .local v11, "text":Ljava/lang/CharSequence;
    if-eqz v13, :cond_102

    .line 168
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_fb

    const-string v16, "BeamShareActivity"

    const-string v17, "Found uri in ACTION_SEND intent."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_fb
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto/16 :goto_30

    .line 170
    :cond_102
    if-eqz v11, :cond_11c

    .line 171
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_10f

    const-string v16, "BeamShareActivity"

    const-string v17, "Found EXTRA_TEXT in ACTION_SEND intent."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_10f
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 174
    :cond_11c
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_30

    const-string v16, "BeamShareActivity"

    const-string v17, "Did not find any shareable data in ACTION_SEND intent."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 177
    .end local v11    # "text":Ljava/lang/CharSequence;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_129
    const-string v16, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 179
    .local v15, "uris":Ljava/util/ArrayList;
    const-string v16, "android.intent.extra.TEXT"

    .line 178
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 181
    .local v12, "texts":Ljava/util/ArrayList;
    if-eqz v15, :cond_166

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_166

    .line 182
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_149
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_30

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 183
    .restart local v13    # "uri":Landroid/net/Uri;
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_160

    const-string v17, "BeamShareActivity"

    const-string v18, "Found uri in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_160
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_149

    .line 186
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_166
    if-eqz v12, :cond_190

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_190

    .line 188
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_179

    const-string v16, "BeamShareActivity"

    const-string v17, "Found text in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_179
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 191
    :cond_190
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_30

    const-string v16, "BeamShareActivity"

    const-string v17, "Did not find any shareable data in ACTION_SEND_MULTIPLE intent."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 203
    .end local v12    # "texts":Ljava/util/ArrayList;
    .end local v15    # "uris":Ljava/util/ArrayList;
    .restart local v6    # "myUserHandle":Landroid/os/UserHandle;
    .restart local v7    # "numValidUris":I
    .restart local v10    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v14    # "uriArray":[Landroid/net/Uri;
    :cond_19d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 205
    .restart local v13    # "uri":Landroid/net/Uri;
    :try_start_1a3
    const-string v17, "com.android.nfc"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1b0
    .catch Ljava/lang/SecurityException; {:try_start_1a3 .. :try_end_1b0} :catch_1d1

    .line 206
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numValidUris":I
    .local v8, "numValidUris":I
    :try_start_1b2
    aput-object v13, v14, v7

    .line 207
    sget-boolean v17, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v17, :cond_251

    const-string v17, "BeamShareActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Found uri: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ce
    .catch Ljava/lang/SecurityException; {:try_start_1b2 .. :try_end_1ce} :catch_24e

    move v7, v8

    .line 208
    .end local v8    # "numValidUris":I
    .restart local v7    # "numValidUris":I
    goto/16 :goto_61

    .line 209
    :catch_1d1
    move-exception v16

    :goto_1d2
    const-string v16, "BeamShareActivity"

    const-string v17, "Security exception granting uri permission to NFC process."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v7, 0x0

    .line 211
    goto/16 :goto_67

    .line 218
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_1dc
    new-instance v10, Landroid/nfc/BeamShareData;

    .end local v10    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v10, v0, v1, v6, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 220
    .restart local v10    # "shareData":Landroid/nfc/BeamShareData;
    goto/16 :goto_76

    .end local v7    # "numValidUris":I
    .end local v14    # "uriArray":[Landroid/net/Uri;
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v16, v0

    if-eqz v16, :cond_230

    .line 221
    new-instance v10, Landroid/nfc/BeamShareData;

    .end local v10    # "shareData":Landroid/nfc/BeamShareData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v10, v0, v1, v6, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 222
    .restart local v10    # "shareData":Landroid/nfc/BeamShareData;
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_76

    const-string v16, "BeamShareActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Created NDEF message:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 224
    :cond_230
    sget-boolean v16, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v16, :cond_23b

    const-string v16, "BeamShareActivity"

    const-string v17, "Could not find any data to parse."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_23b
    new-instance v10, Landroid/nfc/BeamShareData;

    .end local v10    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v10, v0, v1, v6, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .restart local v10    # "shareData":Landroid/nfc/BeamShareData;
    goto/16 :goto_76

    .line 209
    .restart local v8    # "numValidUris":I
    .restart local v13    # "uri":Landroid/net/Uri;
    .restart local v14    # "uriArray":[Landroid/net/Uri;
    :catch_24e
    move-exception v16

    move v7, v8

    .end local v8    # "numValidUris":I
    .restart local v7    # "numValidUris":I
    goto :goto_1d2

    .end local v7    # "numValidUris":I
    .restart local v8    # "numValidUris":I
    :cond_251
    move v7, v8

    .end local v8    # "numValidUris":I
    .restart local v7    # "numValidUris":I
    goto/16 :goto_61
.end method

.method private static final parseShareIntentAndFinish_aroundBody7$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 10
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/ABeamShareActivity;
    .param p3, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p3, p1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish_aroundBody6(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;)V
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

    invoke-static {p3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p3}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto :goto_3
.end method

.method private static final setNegativeButton_aroundBody4(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .registers 5

    .prologue
    .line 110
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setNegativeButton_aroundBody5$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 11
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "target"    # Landroid/app/AlertDialog$Builder;
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "ajc$aspectInstance"    # Lcom/android/nfc/ABeamShareActivity;
    .param p5, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p6, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p7, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 73
    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG()Z

    move-result v0

    const-string v1, "ABeamShareActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.setNegativeButton(int, DialogInterface.OnClickListener))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p3, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;

    .end local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {p3, p4, p5}, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$2;-><init>(Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;)V

    .line 82
    .restart local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    const v0, 0x7f080018

    invoke-virtual {p6, v0, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setPositiveButton_aroundBody2(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .registers 5

    .prologue
    .line 97
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static final setPositiveButton_aroundBody3$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 11
    .param p0, "ajc$this"    # Lcom/android/nfc/BeamShareActivity;
    .param p1, "target"    # Landroid/app/AlertDialog$Builder;
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "ajc$aspectInstance"    # Lcom/android/nfc/ABeamShareActivity;
    .param p5, "activity"    # Lcom/android/nfc/BeamShareActivity;
    .param p6, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p7, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 53
    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->ajc$inlineAccessFieldGet$com_android_nfc_ABeamShareActivity$com_android_nfc_ABeamShareActivity$DBG()Z

    move-result v0

    const-string v1, "ABeamShareActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.setPositiveButton(int, DialogInterface.OnClickListener))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p3, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;

    .end local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {p3, p4, p5}, Lcom/android/nfc/ABeamShareActivity$ABeamShareActivity$1;-><init>(Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;)V

    .line 67
    .restart local p3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    const v0, 0x7f080017

    invoke-virtual {p6, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private showNfcDialogAndExit(I)V
    .registers 15
    .param p1, "msgId"    # I

    .prologue
    const/4 v4, 0x0

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/BeamShareActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    const/4 v7, 0x5

    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->aspectOf()Lcom/android/nfc/ABeamShareActivity;

    move-result-object v8

    move-object v5, p0

    move-object v6, p0

    move-object v9, p0

    move v10, v7

    move-object v11, v4

    invoke-static/range {v5 .. v11}, Lcom/android/nfc/BeamShareActivity;->init$_aroundBody1$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Context;ILcom/android/nfc/ABeamShareActivity;Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 89
    .local v6, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 90
    new-instance v0, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v7, 0x1040013

    .line 98
    new-instance v8, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v8, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->aspectOf()Lcom/android/nfc/ABeamShareActivity;

    move-result-object v9

    move-object v5, p0

    move-object v10, p0

    move-object v11, v6

    move-object v12, v4

    invoke-static/range {v5 .. v12}, Lcom/android/nfc/BeamShareActivity;->setPositiveButton_aroundBody3$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    .line 110
    const v7, 0x1040009

    .line 111
    new-instance v8, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v8, p0}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->aspectOf()Lcom/android/nfc/ABeamShareActivity;

    move-result-object v9

    move-object v5, p0

    move-object v10, p0

    move-object v11, v6

    move-object v12, v4

    invoke-static/range {v5 .. v12}, Lcom/android/nfc/BeamShareActivity;->setNegativeButton_aroundBody5$advice(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 118
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 67
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 68
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_28

    .line 70
    const-string v0, "BeamShareActivity"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 79
    :goto_27
    return-void

    .line 73
    :cond_28
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_37

    .line 74
    const v0, 0x7f080026

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_27

    .line 76
    :cond_37
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_27
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/ABeamShareActivity;->aspectOf()Lcom/android/nfc/ABeamShareActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p0, v1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish_aroundBody7$advice(Lcom/android/nfc/BeamShareActivity;Landroid/content/Intent;Lcom/android/nfc/ABeamShareActivity;Lcom/android/nfc/BeamShareActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method tryText(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 133
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 138
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :goto_d
    return-void

    .line 136
    :cond_e
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_d
.end method

.method tryUri(Landroid/net/Uri;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 122
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 124
    :cond_18
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_1d
    return-void

    .line 127
    :cond_1e
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_1d
.end method

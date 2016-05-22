.class Lcom/android/nfc/utils/LNfcPopupInformation$1;
.super Ljava/lang/Object;
.source "LNfcPopupInformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/utils/LNfcPopupInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/nfc/utils/LNfcPopupInformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/utils/LNfcPopupInformation;
    .registers 29
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 198
    const-string v24, ""

    .line 201
    .local v24, "title":Ljava/lang/String;
    const/16 v18, 0x0

    .line 202
    .local v18, "positiveButtonIntent":Landroid/content/Intent;
    const/4 v15, 0x0

    .line 203
    .local v15, "negativeButtonIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 204
    .local v3, "cancelButtonIntent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 205
    .local v10, "isPositiveButtonIntentActivity":Z
    const/4 v9, 0x0

    .line 206
    .local v9, "isNegativeButtonIntentActivity":Z
    const/4 v8, 0x0

    .line 207
    .local v8, "isCancelButtonIntentActivity":Z
    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 208
    .local v19, "positiveButtonIntentUser":Landroid/os/UserHandle;
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 209
    .local v16, "negativeButtonIntentUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 216
    .local v4, "cancelButtonIntentUser":Landroid/os/UserHandle;
    const/4 v12, 0x0

    .line 217
    .local v12, "isTitleIcon":Z
    const/4 v6, 0x0

    .line 219
    .local v6, "imageId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 222
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 225
    .local v14, "message2":Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    .line 226
    .local v23, "tempBoolean1":[Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_dd

    .line 227
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v18

    .end local v18    # "positiveButtonIntent":Landroid/content/Intent;
    check-cast v18, Landroid/content/Intent;

    .line 228
    .restart local v18    # "positiveButtonIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 229
    if-eqz v23, :cond_56

    .line 230
    const/16 v25, 0x0

    aget-boolean v10, v23, v25

    .line 232
    :cond_56
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v19

    .end local v19    # "positiveButtonIntentUser":Landroid/os/UserHandle;
    check-cast v19, Landroid/os/UserHandle;

    .line 237
    .restart local v19    # "positiveButtonIntentUser":Landroid/os/UserHandle;
    :goto_62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e0

    .line 238
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v15

    .end local v15    # "negativeButtonIntent":Landroid/content/Intent;
    check-cast v15, Landroid/content/Intent;

    .line 239
    .restart local v15    # "negativeButtonIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 240
    if-eqz v23, :cond_87

    .line 241
    const/16 v25, 0x0

    aget-boolean v9, v23, v25

    .line 243
    :cond_87
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v16

    .end local v16    # "negativeButtonIntentUser":Landroid/os/UserHandle;
    check-cast v16, Landroid/os/UserHandle;

    .line 248
    .restart local v16    # "negativeButtonIntentUser":Landroid/os/UserHandle;
    :goto_93
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e2

    .line 249
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "cancelButtonIntent":Landroid/content/Intent;
    check-cast v3, Landroid/content/Intent;

    .line 250
    .restart local v3    # "cancelButtonIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 251
    if-eqz v23, :cond_b8

    .line 252
    const/16 v25, 0x0

    aget-boolean v8, v23, v25

    .line 254
    :cond_b8
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "cancelButtonIntentUser":Landroid/os/UserHandle;
    check-cast v4, Landroid/os/UserHandle;

    .line 259
    .restart local v4    # "cancelButtonIntentUser":Landroid/os/UserHandle;
    :goto_c4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Z

    move-object/from16 v22, v0

    .line 261
    .local v22, "tempBoolean":[Z
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e4

    .line 262
    const/4 v7, 0x0

    .line 291
    :goto_dc
    return-object v7

    .line 234
    .end local v22    # "tempBoolean":[Z
    :cond_dd
    const/16 v18, 0x0

    goto :goto_62

    .line 245
    :cond_e0
    const/4 v15, 0x0

    goto :goto_93

    .line 256
    :cond_e2
    const/4 v3, 0x0

    goto :goto_c4

    .line 265
    .restart local v22    # "tempBoolean":[Z
    :cond_e4
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 267
    const/16 v25, 0x0

    aget-boolean v11, v22, v25

    .line 268
    .local v11, "isSelectPopup":Z
    const/16 v25, 0x1

    aget-boolean v21, v22, v25

    .line 269
    .local v21, "requireDefalutCheckbox":Z
    const/16 v25, 0x2

    aget-boolean v5, v22, v25

    .line 270
    .local v5, "defaultCheckboxEnable":Z
    const/16 v25, 0x3

    aget-boolean v12, v22, v25

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 273
    .local v20, "positiveButtonToken":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 274
    .local v17, "negativeButtonToken":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 276
    new-instance v25, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 277
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 278
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 279
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message2(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 280
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 281
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v9, v1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 282
    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v8, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->cancelButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 283
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 284
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->titleIcon(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 285
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(ZZ)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 286
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 287
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 288
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->imageId(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v25

    .line 289
    invoke-virtual/range {v25 .. v25}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v7

    .line 291
    .local v7, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    goto/16 :goto_dc
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/nfc/utils/LNfcPopupInformation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/nfc/utils/LNfcPopupInformation;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 296
    new-array v0, p1, [Lcom/android/nfc/utils/LNfcPopupInformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/nfc/utils/LNfcPopupInformation$1;->newArray(I)[Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    return-object v0
.end method

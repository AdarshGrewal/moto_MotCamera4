.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/DocJpegHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/motorola/camera/saving/SaveListener;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLandroid/app/Activity;ILcom/motorola/camera/saving/SaveListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$2:Landroid/app/Activity;

    iput p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$4:Lcom/motorola/camera/saving/SaveListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-boolean v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:Z

    iget-object v10, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$2:Landroid/app/Activity;

    iget v4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$3:I

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$4:Lcom/motorola/camera/saving/SaveListener;

    const-string v2, "ImageLength"

    const-string v3, "ImageWidth"

    const-string v5, "SaveImageService"

    .line 1
    iget v6, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2
    iget-object v8, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 3
    iget-object v8, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 4
    :goto_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v12

    invoke-virtual {v8, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->isWholeImage()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 8
    iget-object v11, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    goto :goto_1

    :cond_2
    iget-object v11, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 9
    :goto_1
    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 10
    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 11
    invoke-virtual {v11, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 12
    invoke-virtual {v11, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 13
    invoke-virtual {v11, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 14
    invoke-virtual {v11, v3, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v11, v2, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v2, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v2, v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_5

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_3

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x6

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 21
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Orientation"

    .line 22
    invoke-virtual {v11, v3, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v8}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v2

    .line 24
    invoke-virtual {v11, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 25
    iget-object v2, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v2, :cond_6

    .line 26
    iget-object v2, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    .line 27
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    array-length v7, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    :goto_3
    const-string v13, ";"

    if-ge v12, v7, :cond_7

    :try_start_1
    aget v14, v2, v12

    float-to-int v14, v14

    .line 29
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 31
    :cond_7
    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 33
    invoke-virtual {v11, v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 34
    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 36
    invoke-virtual {v11, v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 37
    invoke-virtual {v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v2

    .line 38
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process failed to write exif of document: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :goto_4
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 v11, 0x0

    if-eqz v1, :cond_8

    .line 40
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto/16 :goto_6

    .line 41
    :cond_8
    new-instance v1, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v1}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 42
    iget-object v2, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://ns.google.com/photos/1.0/document/"

    .line 44
    iget-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v6, :cond_9

    sget-object v6, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 45
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 46
    iput-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 47
    :cond_9
    iget-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v6, :cond_a

    sget-object v6, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 48
    new-instance v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 49
    iput-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 50
    :cond_a
    iget-object v6, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 51
    iget-object v7, v1, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_3
    const-string v9, "Data"

    .line 52
    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 53
    invoke-virtual {v7, v3, v9, v2, v11}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v2, "Mime"

    const-string v7, "image/jpeg"

    .line 54
    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 55
    invoke-virtual {v6, v3, v2, v7, v11}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    const-string v3, "XmpData"

    const-string v6, "can\'t embed document data"

    .line 56
    invoke-static {v3, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_5
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 58
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 59
    iget-object v3, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v3, :cond_b

    .line 60
    sget-object v3, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 61
    new-instance v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 62
    iput-object v3, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 63
    :cond_b
    iget-object v3, v1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 64
    :try_start_4
    new-instance v6, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v6}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    const/16 v7, 0x10

    const/4 v9, 0x1

    .line 65
    invoke-virtual {v6, v7, v9}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v7, "http://ns.google.com/photos/1.0/camera/"

    if-eqz v2, :cond_c

    :try_start_5
    const-string v9, "SpecialTypeID"

    .line 66
    check-cast v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v3, v7, v9, v2, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_5
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_2

    .line 67
    :catch_2
    :cond_c
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    :goto_6
    :try_start_6
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 69
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 71
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 72
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    const-string v2, "Save document jpeg fail."

    .line 73
    invoke-static {v2, v1, v5}, Lcom/motorola/camera/mcf/Mcf$10$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_7

    :catch_4
    move-exception v1

    .line 74
    instance-of v2, v1, Landroid/app/RecoverableSecurityException;

    if-eqz v2, :cond_d

    .line 75
    check-cast v1, Landroid/app/RecoverableSecurityException;

    .line 76
    invoke-virtual {v1}, Landroid/app/RecoverableSecurityException;->getUserAction()Landroid/app/RemoteAction;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    .line 78
    :try_start_7
    invoke-virtual/range {v2 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7 .. :try_end_7} :catch_5

    .line 79
    :catch_5
    :goto_7
    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 80
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 81
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/saving/SaveListener;)V

    .line 82
    iget-object p0, v0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 83
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    .line 84
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 85
    :goto_8
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 86
    throw p0
.end method

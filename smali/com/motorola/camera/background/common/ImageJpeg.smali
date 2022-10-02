.class public final Lcom/motorola/camera/background/common/ImageJpeg;
.super Lcom/motorola/camera/background/common/ImageBase;
.source "ImageJpeg.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/ImageJpeg$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 72\u00020\u0001:\u00017Ba\u0008\u0016\u0012\u0006\u0010.\u001a\u00020\u0004\u0012\u0006\u0010/\u001a\u00020\u0004\u0012\u0006\u00100\u001a\u00020\t\u0012\u0006\u0010%\u001a\u00020\u0004\u0012\u0006\u0010+\u001a\u00020\u0004\u0012\u0006\u00101\u001a\u00020\t\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00084\u00105B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u00084\u00106J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0008\u0010\u000b\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010\u0010\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0006R$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R$\u0010\u001c\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R$\u0010\u001f\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0014\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018R$\u0010\"\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0014\u001a\u0004\u0008#\u0010\u0016\"\u0004\u0008$\u0010\u0018R\"\u0010%\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u0010+\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010&\u001a\u0004\u0008,\u0010(\"\u0004\u0008-\u0010*\u00a8\u00068"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/ImageJpeg;",
        "Lcom/motorola/camera/background/common/ImageBase;",
        "Landroid/os/Parcel;",
        "parcel",
        "",
        "flags",
        "",
        "writeToParcel",
        "describeContents",
        "",
        "getJpegBlob",
        "getJpegThumbnailBlob",
        "deleteJpegFile",
        "deleteJpegThumbnailFile",
        "deleteApp1ExifFile",
        "deleteApp1MakernotesFile",
        "deleteApp6BlobFile",
        "deleteAllFiles",
        "Lcom/motorola/camera/background/common/IOFile;",
        "jpeg",
        "Lcom/motorola/camera/background/common/IOFile;",
        "getJpeg",
        "()Lcom/motorola/camera/background/common/IOFile;",
        "setJpeg",
        "(Lcom/motorola/camera/background/common/IOFile;)V",
        "jpegThumbnail",
        "getJpegThumbnail",
        "setJpegThumbnail",
        "app1Exif",
        "getApp1Exif",
        "setApp1Exif",
        "app1Makernotes",
        "getApp1Makernotes",
        "setApp1Makernotes",
        "app6Blob",
        "getApp6Blob",
        "setApp6Blob",
        "thumbWidth",
        "I",
        "getThumbWidth",
        "()I",
        "setThumbWidth",
        "(I)V",
        "thumbHeight",
        "getThumbHeight",
        "setThumbHeight",
        "width",
        "height",
        "jpegBlob",
        "jpegThumbnailBlob",
        "",
        "cacheDir",
        "<init>",
        "(II[BII[BLcom/motorola/camera/background/common/IOFile;Lcom/motorola/camera/background/common/IOFile;Lcom/motorola/camera/background/common/IOFile;Ljava/lang/String;)V",
        "(Landroid/os/Parcel;)V",
        "CREATOR",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/ImageJpeg$CREATOR;

.field private static final JPEG_PREFIX:Ljava/lang/String;

.field private static final JPEG_THUMBNAIL_PREFIX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private app1Exif:Lcom/motorola/camera/background/common/IOFile;

.field private app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

.field private app6Blob:Lcom/motorola/camera/background/common/IOFile;

.field private jpeg:Lcom/motorola/camera/background/common/IOFile;

.field private jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

.field private thumbHeight:I

.field private thumbWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/common/ImageJpeg$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/background/common/ImageJpeg$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/background/common/ImageJpeg;->CREATOR:Lcom/motorola/camera/background/common/ImageJpeg$CREATOR;

    .line 1
    const-class v0, Lcom/motorola/camera/background/common/ImageJpeg;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/ImageJpeg;->TAG:Ljava/lang/String;

    const-string v0, "jpeg-cache"

    .line 2
    sput-object v0, Lcom/motorola/camera/background/common/ImageJpeg;->JPEG_PREFIX:Ljava/lang/String;

    const-string v0, "jpeg-thumbnail-cache"

    .line 3
    sput-object v0, Lcom/motorola/camera/background/common/ImageJpeg;->JPEG_THUMBNAIL_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[BII[BLcom/motorola/camera/background/common/IOFile;Lcom/motorola/camera/background/common/IOFile;Lcom/motorola/camera/background/common/IOFile;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p10

    const-string v1, "jpegBlob"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jpegThumbnailBlob"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->JPEG:Lcom/motorola/camera/background/common/IOFormat;

    const-string v3, "JPEG"

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/ImageBase;-><init>(Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v1, p7

    .line 2
    iput-object v1, v0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    move-object/from16 v1, p8

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    move-object/from16 v1, p9

    .line 4
    iput-object v1, v0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    move/from16 v1, p4

    .line 5
    iput v1, v0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbWidth:I

    move/from16 v1, p5

    .line 6
    iput v1, v0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbHeight:I

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/motorola/camera/background/common/ImageJpeg;->JPEG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v6, Lcom/motorola/camera/background/common/ImageJpeg;->TAG:Ljava/lang/String;

    const-string v10, "caching JPEG file: "

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v10, Ljava/io/ObjectOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    const-string/jumbo v11, "writing JPEG, size="

    .line 11
    array-length v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v10, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v10}, Ljava/io/ObjectOutputStream;->flush()V

    .line 14
    invoke-virtual {v10}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x0

    .line 15
    invoke-static {v10, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 16
    new-instance v10, Lcom/motorola/camera/background/common/IOFile;

    sget-object v11, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    sget-object v12, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    invoke-direct {v10, v11, v12, v2}, Lcom/motorola/camera/background/common/IOFile;-><init>(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/motorola/camera/background/common/ImageJpeg;->JPEG_THUMBNAIL_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caching JPEG thumbnail file: "

    .line 18
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    const-string/jumbo v3, "writing JPEG thumbnail, size="

    .line 20
    array-length v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v2, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 23
    new-instance v2, Lcom/motorola/camera/background/common/IOFile;

    invoke-direct {v2, v11, v12, v1}, Lcom/motorola/camera/background/common/IOFile;-><init>(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 24
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 25
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/motorola/camera/background/common/ImageBase;-><init>(Landroid/os/Parcel;)V

    .line 27
    const-class v0, Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/IOFile;

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbWidth:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbHeight:I

    .line 30
    const-class v0, Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/IOFile;

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    .line 31
    const-class v0, Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/IOFile;

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    .line 32
    const-class v0, Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/IOFile;

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    .line 33
    const-class v0, Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/IOFile;

    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method


# virtual methods
.method public final deleteAllFiles()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ImageJpeg;->deleteJpegFile()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ImageJpeg;->deleteJpegThumbnailFile()V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ImageJpeg;->deleteApp1ExifFile()V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ImageJpeg;->deleteApp1MakernotesFile()V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ImageJpeg;->deleteApp6BlobFile()V

    return-void
.end method

.method public final deleteApp1ExifFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final deleteApp1MakernotesFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final deleteApp6BlobFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final deleteJpegFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final deleteJpegThumbnailFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getApp1Exif()Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    return-object p0
.end method

.method public final getApp1Makernotes()Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    return-object p0
.end method

.method public final getApp6Blob()Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    return-object p0
.end method

.method public final getJpeg()Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    return-object p0
.end method

.method public final getJpegBlob()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/motorola/camera/background/common/ImageJpeg;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v3, "un-caching JPEG file: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    if-nez p0, :cond_2

    move-object p0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, p0

    goto :goto_3

    .line 6
    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_3
    return-object v1
.end method

.method public final getJpegThumbnail()Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    return-object p0
.end method

.method public final getJpegThumbnailBlob()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/motorola/camera/background/common/ImageJpeg;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v3, "un-caching JPEG thumbnail file: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    if-nez p0, :cond_2

    move-object p0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, p0

    goto :goto_3

    .line 6
    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_3
    return-object v1
.end method

.method public final getThumbHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbHeight:I

    return p0
.end method

.method public final getThumbWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbWidth:I

    return p0
.end method

.method public final setApp1Exif(Lcom/motorola/camera/background/common/IOFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final setApp1Makernotes(Lcom/motorola/camera/background/common/IOFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final setApp6Blob(Lcom/motorola/camera/background/common/IOFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final setJpeg(Lcom/motorola/camera/background/common/IOFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final setJpegThumbnail(Lcom/motorola/camera/background/common/IOFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public final setThumbHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbHeight:I

    return-void
.end method

.method public final setThumbWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbWidth:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/background/common/ImageBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpeg:Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->thumbHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->jpegThumbnail:Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Exif:Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app1Makernotes:Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageJpeg;->app6Blob:Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

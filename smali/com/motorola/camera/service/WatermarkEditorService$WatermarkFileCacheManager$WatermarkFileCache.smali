.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;
.super Landroid/util/LruCache;
.source "WatermarkEditorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatermarkFileCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    .line 2
    invoke-static {p3}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

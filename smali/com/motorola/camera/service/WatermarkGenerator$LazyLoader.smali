.class public final Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;
.super Ljava/lang/Object;
.source "WatermarkGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/WatermarkGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/service/WatermarkGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/service/WatermarkGenerator;-><init>(Lcom/motorola/camera/service/WatermarkGenerator$1;)V

    sput-object v0, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    return-void
.end method

.class public final Lcom/motorola/camera/settings/FastSettingsManager$LazyLoader;
.super Ljava/lang/Object;
.source "FastSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/settings/FastSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/settings/FastSettingsManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/settings/FastSettingsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/FastSettingsManager;-><init>(Lcom/motorola/camera/settings/FastSettingsManager$1;)V

    sput-object v0, Lcom/motorola/camera/settings/FastSettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/FastSettingsManager;

    return-void
.end method

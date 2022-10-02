.class public abstract Lcom/motorola/camera/background/service/jms/TransactionDataBase;
.super Landroidx/room/RoomDatabase;
.source "TransactionDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/TransactionDataBase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/background/service/jms/TransactionDataBase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/motorola/camera/background/service/jms/TransactionDataBase$Companion;

.field public static volatile INSTANCE:Lcom/motorola/camera/background/service/jms/TransactionDataBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDataBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/background/service/jms/TransactionDataBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/background/service/jms/TransactionDataBase;->Companion:Lcom/motorola/camera/background/service/jms/TransactionDataBase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transactionDao()Lcom/motorola/camera/background/service/jms/TransactionDao;
.end method

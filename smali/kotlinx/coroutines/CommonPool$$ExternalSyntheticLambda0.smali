.class public final synthetic Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;->INSTANCE:Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/CommonPool;->INSTANCE:Lkotlinx/coroutines/CommonPool;

    return-void
.end method

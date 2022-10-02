.class public final synthetic Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$containsSuspendFunctionType$1;
.super Lkotlin/jvm/internal/PropertyReference1;
.source "MemberDeserializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->containsSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$containsSuspendFunctionType$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$containsSuspendFunctionType$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$containsSuspendFunctionType$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$containsSuspendFunctionType$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$containsSuspendFunctionType$1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference1;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/FunctionTypesKt;->isSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "isSuspendFunctionType"

    return-object p0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    const-class p0, Lkotlin/reflect/jvm/internal/impl/builtins/FunctionTypesKt;

    .line 1
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-string v1, "deserialization"

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "isSuspendFunctionType(Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object p0
.end method

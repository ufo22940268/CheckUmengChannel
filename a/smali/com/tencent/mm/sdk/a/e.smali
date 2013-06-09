.class public final Lcom/tencent/mm/sdk/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mm/sdk/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/sdk/a/e;->a:Lcom/tencent/mm/sdk/a/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/a/b;
    .locals 1

    sget-object v0, Lcom/tencent/mm/sdk/a/e;->a:Lcom/tencent/mm/sdk/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/a/e;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/a/e;-><init>()V

    sput-object v0, Lcom/tencent/mm/sdk/a/e;->a:Lcom/tencent/mm/sdk/a/e;

    :cond_0
    new-instance v0, Lcom/tencent/mm/sdk/a/f;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/sdk/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

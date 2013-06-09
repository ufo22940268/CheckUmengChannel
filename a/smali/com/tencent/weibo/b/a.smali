.class public final Lcom/tencent/weibo/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/weibo/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/weibo/b/b;

    invoke-direct {v0}, Lcom/tencent/weibo/b/b;-><init>()V

    sput-object v0, Lcom/tencent/weibo/b/a;->a:Lcom/tencent/weibo/b/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/weibo/b/a;->a:Lcom/tencent/weibo/b/b;

    invoke-virtual {v0, p0}, Lcom/tencent/weibo/b/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

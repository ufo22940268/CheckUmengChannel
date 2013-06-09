.class public final Lsdk/b/a/a/b/p;
.super Lsdk/b/a/a/b/d;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsdk/b/a/a/b/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsdk/b/a/a/b/p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/b/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/b/p;->a:Ljava/lang/String;

    return-void
.end method

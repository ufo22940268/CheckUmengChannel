.class public abstract Lsdk/c/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/c/a/e/a/f;


# instance fields
.field private volatile a:Z

.field private b:J

.field protected w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/e/a;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lsdk/c/a/e/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/c/a/e/a;->a:Z

    return v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lsdk/c/a/e/a;->b:J

    return-wide v0
.end method
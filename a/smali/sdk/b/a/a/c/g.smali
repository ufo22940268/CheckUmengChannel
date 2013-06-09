.class public final Lsdk/b/a/a/c/g;
.super Ljava/lang/Object;


# static fields
.field private static b:Lsdk/b/a/a/c/g;


# instance fields
.field a:Lsdk/b/a/a/e/f;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/c/g;->c:Ljava/util/Map;

    new-instance v0, Lsdk/b/a/a/e/f;

    invoke-direct {v0}, Lsdk/b/a/a/e/f;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/c/g;->a:Lsdk/b/a/a/e/f;

    return-void
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lsdk/b/a/a/c/g;

    invoke-direct {v0}, Lsdk/b/a/a/c/g;-><init>()V

    sput-object v0, Lsdk/b/a/a/c/g;->b:Lsdk/b/a/a/c/g;

    return-void
.end method

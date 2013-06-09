.class public interface abstract Lcom/zhangdan/app/data/db/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zhangdan.app/chart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/g;->a:Landroid/net/Uri;

    const-string v0, "CREATE TABLE IF NOT EXISTS Chart(_id INTEGER PRIMARY KEY AUTOINCREMENT,user_id INTEGER DEFAULT 0,year INTEGER DEFAULT 0,val TEXT DEFAULT \'\')"

    sput-object v0, Lcom/zhangdan/app/data/db/a/g;->b:Ljava/lang/String;

    return-void
.end method

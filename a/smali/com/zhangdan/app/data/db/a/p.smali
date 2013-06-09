.class public interface abstract Lcom/zhangdan/app/data/db/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zhangdan.app/sysmaster"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/p;->a:Landroid/net/Uri;

    const-string v0, "CREATE TABLE IF NOT EXISTS SysMaster(_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT DEFAULT \'\',user_id INTEGER DEFAULT 0,name TEXT DEFAULT \'\',val TEXT DEFAULT \'\')"

    sput-object v0, Lcom/zhangdan/app/data/db/a/p;->b:Ljava/lang/String;

    return-void
.end method

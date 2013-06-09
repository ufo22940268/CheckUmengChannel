.class public interface abstract Lcom/zhangdan/app/data/db/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/announcement"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/a;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS Announcement(_id INTEGER PRIMARY KEY AUTOINCREMENT,auto_id INTEGER DEFAULT 0,target_plat INTEGER DEFAULT 0,app_id INTEGER DEFAULT 0,message TEXT DEFAULT \'\',end_time TEXT DEFAULT \'\',position INTEGER DEFAULT 0,status INTEGER DEFAULT 0)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/a;->b:Ljava/lang/String;

    return-void
.end method

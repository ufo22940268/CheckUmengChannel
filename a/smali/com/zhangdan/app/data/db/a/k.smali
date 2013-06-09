.class public interface abstract Lcom/zhangdan/app/data/db/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.zhangdan.app/shopping_category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/k;->a:Landroid/net/Uri;

    const-string v0, "CREATE TABLE IF NOT EXISTS ShoppingCategory(_id INTEGER PRIMARY KEY AUTOINCREMENT,category_id INTEGER DEFAULT 0,parent_id INTEGER DEFAULT 0,category_name TEXT DEFAULT \'\',is_delete INTEGER DEFAULT 0)"

    sput-object v0, Lcom/zhangdan/app/data/db/a/k;->b:Ljava/lang/String;

    return-void
.end method

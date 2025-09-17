<a name="readme-top"></a>

[JP](README.md) | [EN](README_en.md)

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![License][license-shield]][license-url]

# OrbbecSDK ROS2 Wrapper

<!-- 目次 -->
<details>
  <summary>目次</summary>
  <ol>
    <li>
      <a href="#概要">概要</a>
    </li>
    <li>
      <a href="#セットアップ">セットアップ</a>
      <ul>
        <li><a href="#環境条件">環境条件</a></li>
        <li><a href="#インストール方法">インストール方法</a></li>
      </ul>
    </li>
    <li><a href="#実行・操作方法">実行・操作方法</a></li>
      <ul>
        <li><a href="#カメラの起動">カメラの起動</a></li>
      </ul>
    </li>
    <li><a href="#マイルストーン">マイルストーン</a></li>
    <li><a href="#参考文献">参考文献</a></li>
  </ol>
</details>



<!-- レポジトリの概要 -->
## 概要

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->

OrbbecのカメラをROS2の環境で使うために必要なパッケージです．


<p align="right">(<a href="#readme-top">上に戻る</a>)</p>


<!-- セットアップ -->
## セットアップ
本レポジトリのセットアップ方法について説明します．

<p align="right">(<a href="#readme-top">上に戻る</a>)</p>

### 環境条件

| System  | Version |
| ------------- | ------------- |
| Ubuntu | 22.04 (Jammy Jellyfish) |
| ROS | Humble |
| Python | 3.0~ |

<p align="right">(<a href="#readme-top">上に戻る</a>)</p>

### インストール方法

1. ROS2の`src`フォルダに移動します．
   ```bash
   cd　~/colcon_ws/src/
   ```
2. 本レポジトリをcloneします．
   ```bash
   git clone https://github.com/TeamSOBITS/orbbecsdk_ros2.git
   ```
3. レポジトリの中へ移動します．
   ```bash
   cd orbbecsdk_ros2
   ```
4. 依存パッケージをインストールします．
    ```bash
    bash install.sh
    ```
5. パッケージをコンパイルします．
   ```bash
   cd ~/colcon_ws/
   ```
   ```bash
   colcon build --symlink-install
   ```
   ```bash
   source ~/colcon_ws/install/setup.sh
   ```
   
<p align="right">(<a href="#readme-top">上に戻る</a>)</p>

<!-- 実行・操作方法 -->
## 実行・操作方法

### カメラの起動
Orbbec_Gemini_330_Series を使用する場合：
```
ros2 launch orbbec_camera gemini_330_series.launch.py
```
Orbbec_Femto_Bolt を使用する場合：
```
ros2 launch orbbec_camera femto_bolt.launch.py
```




<!-- マイルストーン -->
## マイルストーン

現時点のバッグや新規機能の依頼を確認するために[Issueページ](issues-url) をご覧ください．

<p align="right">(<a href="#readme-top">上に戻る</a>)</p>

<!-- 参考文献 -->
## 参考文献

<!-- * [ROS Navigationスタックソフトウェア設計仕様](https://robo-marc.github.io/navigation_documents/)
* [explore_lite](http://wiki.ros.org/explore_lite) -->

<p align="right">(<a href="#readme-top">上に戻る</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/TeamSOBITS/orbbecsdk_ros2.svg?style=for-the-badge
[contributors-url]: https://github.com/TeamSOBITS/orbbecsdk_ros2/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/TeamSOBITS/orbbecsdk_ros2.svg?style=for-the-badge
[forks-url]: https://github.com/TeamSOBITS/orbbecsdk_ros2/network/members
[stars-shield]: https://img.shields.io/github/stars/TeamSOBITS/orbbecsdk_ros2.svg?style=for-the-badge
[stars-url]: https://github.com/TeamSOBITS/orbbecsdk_ros2/stargazers
[issues-shield]: https://img.shields.io/github/issues/TeamSOBITS/orbbecsdk_ros2.svg?style=for-the-badge
[issues-url]: https://github.com/TeamSOBITS/orbbecsdk_ros2/issues
[license-shield]: https://img.shields.io/github/license/TeamSOBITS/orbbecsdk_ros2.svg?style=for-the-badge
[license-url]: LICENSE

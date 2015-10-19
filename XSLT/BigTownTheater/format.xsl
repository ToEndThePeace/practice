<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html lang="en">
		<head>
			<meta charset="utf-8" />
			<title>Theater Catalog</title>
		</head>
		<body>
			<h1>Big Town Theater</h1>
			<table>
				<tr>
					<th colspan="3">Movies</th>
				</tr>
				<xsl:for-each select="theater/movies/movie">
				<xsl:sort select="time" />
				<xsl:sort select="title" />
					<tr>
						<td><xsl:value-of select="title" /></td>
						<td><xsl:value-of select="genre" /></td>
						<td><xsl:value-of select="time" /></td>
					</tr>
				</xsl:for-each>
			</table>
			<table>
				<tr>
					<th colspan="2">Ticket Prices</th>
				</tr>
				<xsl:for-each select="theater/tickets/ticket">
				<xsl:sort select="price" />
					<tr>
						<td><xsl:value-of select="type" /></td>
						<td><xsl:value-of select="price" /></td>
					</tr>
				</xsl:for-each>
			</table>
			<table>
				<tr>
					<th colspan="2">Snacks</th>
				</tr>
				<xsl:for-each select="theater/snacks/snack">
				<xsl:sort select="@type" />
				<xsl:sort select="price" />
					<tr>
						<td><xsl:value-of select="@type" /></td>
						<td><xsl:value-of select="title" /></td>
						<td><xsl:value-of select="price" /></td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>
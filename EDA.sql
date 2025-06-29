-- EDA
-- Exploratory Data Analysis


SELECT * 
FROM world_layoffs.layoffs_staging2;

SELECT MAX(total_laid_off)
FROM world_layoffs.layoffs_staging2;


-- Percentage of layoffs
SELECT MAX(percentage_laid_off),  MIN(percentage_laid_off)
FROM world_layoffs.layoffs_staging2
WHERE  percentage_laid_off IS NOT NULL;


-- Companies with 1(100 percent) of the company laid off
SELECT *
FROM world_layoffs.layoffs_staging2
WHERE  percentage_laid_off = 1;

SELECT *
FROM world_layoffs.layoffs_staging2
WHERE  percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- Companies with the biggest single Layoff

SELECT company, total_laid_off
FROM world_layoffs.layoffs_staging
ORDER BY 2 DESC
LIMIT 5;


-- Companies with the most Total Layoffs
SELECT company, SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY company
ORDER BY 2 DESC
LIMIT 10;

SELECT location, SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY location
ORDER BY 2 DESC
LIMIT 10;

SELECT country, SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

SELECT YEAR(date), SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY YEAR(date)
ORDER BY 1 ASC;

SELECT industry, SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;

SELECT stage, SUM(total_laid_off)
FROM world_layoffs.layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;

